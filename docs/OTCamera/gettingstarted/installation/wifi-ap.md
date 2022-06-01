# Wi-Fi Accesspoint

In order to access the OTCamera Raspberry Pi in field, we will let the Raspberry create it's own Wi-Fi.
First, we'll need to install some packages:

```sh
sudo apt install hostapd dnsmasq dhcpcd -y
```

Now we'll need to configure all three of the newly installed packages.
Let's start with hostap.

```sh
sudo nano /etc/default/hostapd
```

We need to modify line 13 to specify a valid `hostapd.conf`. To do so, insert `"/etc/hostapd/hostapd.conf"` right after `DAEMON_CONF=` in line 13:

```sh hl_lines="13" linenums="1" title="/etc/default/hostapd"
# Defaults for hostapd initscript
#
# WARNING: The DAEMON_CONF setting has been deprecated and will be removed
#          in future package releases.
#
# See /usr/share/doc/hostapd/README.Debian for information about alternative
# methods of managing hostapd.
#
# Uncomment and set DAEMON_CONF to the absolute path of a hostapd configuration
# file and hostapd will be started during system boot. An example configuration
# file can be found at /usr/share/doc/hostapd/examples/hostapd.conf.gz
#
DAEMON_CONF="/etc/hostapd/hostapd.conf"

# Additional daemon options to be appended to hostapd command:-
#       -d   show more debug messages (-dd for even more)
#       -K   include key data in debug messages
#       -t   include timestamps in some debug messages
#
# Note that -B (daemon mode) and -P (pidfile) options are automatically
# configured by the init.d script and must not be added to DAEMON_OPTS.
#
#DAEMON_OPTS=""
```

Now let's edit this hostapd.conf file to configure our access point:

```conf linenums="1" title="/etc/hostapd/hostapd.conf"
channel=11
ssid=MyOTCameraWifiNetwork
wpa_passphrase=reallysafepassword
interface=uap0
hw_mode=g
macaddr_acl=0
auth_algs=1
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
country_code=DE
```

If you are planning to connect OTCamera to your own Wi-Fi
(e.g. to transfer files in office or to get internet access to update etc.)
you must use the same Wi-Fi channel as your office Wi-Fi network
(since the Raspberry has just one antanna).
You should edit your office Wi-Fi to always use the same channel to avoid automatic channel selection.

The name of the Wi-Fi is specified just after `ssid=` and the password in line 3.

Depending on where you will use OTCamera you should set the according [contry code](https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes) in the last line (for us it's Germany --> DE).

Save and exit the file.

If you will connect to the OTCamera's Wi-Fi your device will need a valid ip address.
dhcpcd and dnsmasq will help us doing by adding some lines (12-14) to the end of `/etc/dhcpcd.conf`:

```sh hl_lines="12-14" linenums="1" title="/etc/dhcpcd.conf"
...
# It is possible to fall back to a static IP if DHCP fails:
# define static profile
#profile static_eth0
#static ip_address=192.168.1.23/24
#static routers=192.168.1.1
#static domain_name_servers=192.168.1.1

# fallback to static profile on eth0
#interface eth0
#fallback static_eth0
interface uap0
        static ip_address=10.10.50.1/24
        nohook wpa_supplicant
```

If your office Wi-Fi uses the same address range you should use another one by, for example, using 51 instead of 50. But you need to remember that address to connect to your OTCamera later on.

Finally, let's configure dnsmasq's config (`/etc/dnsmasq.conf`).
It's a quite long file with a lot of explaining comments.
We will backup this template and afterwards create a new, empty config:

```sh
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.backup
sudo nano /etc/dnsmasq.conf
```

Now add the necessary config:

```txt linenums="1" title="/etc/dnsmasq.conf"
interface=lo,uap0
no-dhcp-interface=lo,wlan0
bind-interfaces
server=10.10.50.1
domain-needed
bogus-priv
dhcp-range=10.10.50.10,10.10.50.250,2h
```

If you chose a different ip address range in `/etc/dhcpcd.conf` you'll need to adjust ip addresses here as well.

Puh, this was quite a lot configuration edit stuff... But we are almost ready :)

We don't want the services to start uncoordinated at bootup.
So let's unmask hostapd first and then disable all three services to not start up at boot:

```sh
systemctl unmask hostapd.service
systemctl disable hostapd.service
systemctl disable dhcpcd.service
systemctl disable dnsmasq.service
```

We'll use a script instead to start up services.
Make sure you are still inside the OTCamera directory.

```sh
sudo cp ./raspi-files/usr/local/bin/wifistart /usr/local/bin/wifistart
```

Last but not least, let's add this script to `/etc/rc.local` to start it at boot.

```sh hl_lines="23" linenums="1" title="/etc/rc.local"
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# Print the IP address
_IP=$(hostname -I) || true
if [ "$_IP" ]; then
  printf "My IP address is %s\n" "$_IP"
fi

/usr/bin/tvservice -o
/sbin/iw dev wlan0 set power_save off

/bin/bash /usr/local/bin/wifistart"

exit 0
```

Yeah, we're done! If you carfully followed this steps and we maintained this manual (...) the Raspberry should still connect to your Wi-Fi and will also create it's own Wi-Fi. It could take a minute or two, so don't worry to early. Let's try:

```sh
sudo reboot
```

All good? We hope so!
