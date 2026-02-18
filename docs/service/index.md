---
template: base.html
title: Unser Angebot
hide:
        -toc
---

<style>
  /* Scoped styles for the service index page in columns */
  .service-index { 
    margin: 0 auto; 
    max-width: 1100px; 
    padding: 0 1rem 2rem; 
  }
  .service-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
  }
  @media (max-width: 900px) {
    .service-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  }
  @media (max-width: 600px) {
    .service-grid { grid-template-columns: 1fr; }
  }

  .service-card {
    display: flex;
    flex-direction: column;
    gap: .75rem;
    background: var(--md-default-bg-color, #fff);
    border: 1px solid rgba(0,0,0,.08);
    border-radius: 12px;
    box-shadow: 0 1px 2px rgba(0,0,0,.06);
    padding: 1rem 1.25rem;
    transition: transform .12s ease, box-shadow .12s ease;
  }
  .service-card:hover { 
    transform: translateY(-1px);
    box-shadow: 0 4px 14px rgba(0,0,0,.08);
  }
  .service-media {
    width: 100%;
    height: 140px;
    display: grid;
    place-items: center;
    border-radius: 10px;
    background: var(--md-code-bg-color, #f6f8fa);
    overflow: hidden;
  }
  .service-media img { 
    width: 100%; 
    height: 100%; 
    object-fit: cover; 
  }
  .service-badge {
    font-size: 2rem;
    line-height: 1;
  }
  .service-title { 
    margin: 0; 
    font-weight: 700; 
    font-size: 1.125rem; 
  }
  .service-desc { 
    margin: 0; 
    color: var(--md-default-fg-color--light, #616161);
  }
  .service-cta a { 
    display: inline-block; 
    margin-top: .25rem;
    padding: .5rem .75rem; 
    border-radius: 8px; 
    text-decoration: none; 
    color: var(--md-primary-bg-color, #fff); 
    background: var(--md-primary-fg-color, #4051b5); 
    font-weight: 600; 
    font-size: .9rem; 
  }
  .service-cta a:hover { filter: brightness(1.05); }
</style>

<div class="service-index">
  <div class="service-grid">
    <div class="service-card">
      <div class="service-media">
        <img src="./OTCamera.webp" alt="OTCamera">
      </div>
      <p class="service-title">OTCamera – intelligente Verkehrskamera</p>
      <p class="service-desc">Robuste Hardware, einfaches Setup und zuverlässige Datenerfassung. Ideal für Verkehrszählungen, Geschwindigkeit und Sicherheit.</p>
      <div class="service-cta">
        <a href="./camera/">Mehr erfahren</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-media">
        <div class="service-badge" aria-hidden="true">🎞️</div>
      </div>
      <p class="service-title">Video Processing – von Rohdaten zu Insights</p>
      <p class="service-desc">Automatisierte Erkennung und Verfolgung von Verkehrsteilnehmern – skalierbar, präzise und DSGVO‑konform.</p>
      <div class="service-cta">
        <a href="./video_processing/">Mehr erfahren</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-media">
        <div class="service-badge" aria-hidden="true">🧭</div>
      </div>
      <p class="service-title">Consulting – Expertise für Ihre Projekte</p>
      <p class="service-desc">Wir unterstützen bei Planung, Datenerhebung und Analyse – individuell und praxisnah für Kommunen, Büros und Forschung.</p>
      <div class="service-cta">
        <a href="./consulting/">Kontakt & Details</a>
      </div>
    </div>
  </div>
</div>