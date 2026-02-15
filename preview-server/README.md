# PR Preview Server

Stellt automatische Preview-Deployments der OTDocs-Dokumentation bereit.
Jeder Pull Request bekommt eine eigene URL unter `pr-{N}.preview.opentrafficcam.org`.

## Architektur

```text
GitHub Actions (Build + rsync)
        | SSH (Port 2222, nur rsync erlaubt)
        v
[rsync-receiver Container] --rw--+
                                  |-- Docker Volume: preview-data
[nginx Container] ----------ro---+
        ^
[Traefik v2] <-- pr-42.preview.opentrafficcam.org
```

- **nginx:** Bedient alle PR-Previews. Regex-Subdomain-Routing auf Unterverzeichnisse.
- **receiver:** Nimmt Dateien per rsync/SSH entgegen. Kein Shell-Zugriff,
  nur rsync- und Cleanup-Befehle erlaubt (`rsync-handler.sh`).
- **preview-data:** Geteiltes Docker-Volume (receiver: rw, nginx: ro).

## Voraussetzungen

1. Docker Host mit Traefik v2 (Netzwerk: `web`, Entrypoint: `websecure`, CertResolver: `ionos`)
2. Wildcard DNS: `*.preview.opentrafficcam.org` zeigt auf die Server-IP

## Setup

### 1. SSH-Keypair generieren

```bash
ssh-keygen -t ed25519 -C "github-actions-deploy" -f preview_key
```

### 2. GitHub Secrets anlegen

Im Repository unter *Settings > Secrets and variables > Actions*:

| Secret | Wert |
|---|---|
| `PREVIEW_SSH_PRIVATE_KEY` | Inhalt von `preview_key` (Private Key) |
| `PREVIEW_SSH_HOST` | Hostname oder IP des Servers |

### 3. `.env` auf dem Server erstellen

```bash
cp .env.example .env
```

Den Public Key (`preview_key.pub`) als `AUTHORIZED_KEY` eintragen.

### 4. Container starten

```bash
docker compose up -d
```

## Funktionsweise

| Ereignis | Aktion |
|---|---|
| PR wird geoeffnet / gepusht | GitHub Actions baut MkDocs, deployt per rsync an den Receiver-Container. Ein Kommentar mit der Preview-URL wird im PR gepostet. |
| PR wird geschlossen / gemergt | GitHub Actions sendet `cleanup pr-{N}` an den Receiver, der das Verzeichnis loescht. |

## Sicherheit

- SSH-Zugriff nur mit Ed25519-Key, kein Passwort
- `authorized_keys` mit `restrict,command=` - kein Shell-Zugriff moeglich
- `rsync-handler.sh` validiert alle Befehle und Pfade (Path-Traversal-Schutz)
- Kein SSH auf den Docker Host noetig
- nginx mountet das Volume read-only
- Wildcard-TLS-Zertifikat via Traefik + DNS-Challenge (IONOS)
- `X-Robots-Tag: noindex` Header und `robots.txt` verhindern Suchmaschinen-Indexierung
- Analytics (Plausible) ist in Previews deaktiviert

## Dateien

```text
preview-server/
  docker-compose.yml   # nginx + receiver Container-Definition
  nginx.conf           # Wildcard-Subdomain-Routing fuer Previews
  .env.example         # Vorlage fuer den SSH Public Key
  receiver/
    Dockerfile         # Alpine + sshd + rsync
    sshd_config        # SSH-Haertung (kein Passwort, kein Forwarding)
    entrypoint.sh      # Schreibt authorized_keys und startet sshd
    rsync-handler.sh   # Validiert SSH-Befehle (nur rsync + cleanup)
```
