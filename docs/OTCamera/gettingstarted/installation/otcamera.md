# Install OTCamera

Now we are ready to install last missing dependencies and setup OTCamera.

## Setup Python and Dependencies

By default, Raspberry OS light doesn't come with PIP and git installed. We will need it to install required packages.

```bash
sudo apt install python3-pip git -y
```

??? help "If you are using RaspberryPi OS legacy"

    Since the latest RaspberryPi OS python3 is the default python version.
    If you are using (not recommended) an older version of RaspberryPi OS, you need to make python3 your default version.

    Raspberry OS legacy ships with python 2 and python 3. By default python 2 is used. We want to change that to python 3 by adding two single lines to ```.bashrc```.

    ```bash
    echo "alias python='/usr/bin/python3'" >> ~/.bashrc
    echo "alias pip=pip3" >> ~/.bashrc

    source ~/.bashrc

    python --version
    pip --version
    ```

    Both commands should state, that they are (using) python 3.(x).

## Clone OTCamera

We'll need to download OTCamera using git to get all the code we'll need to run OTCamera.

```bash
git clone --depth 1 https://github.com/OpenTrafficCam/OTCamera.git

```

OTCamera requires additional python packages, which need to be installed.

```bash
cd OTCamera
pip install -r requirements.txt --upgrade
```

## Setup Webserver for Preview

We are currently using nginx (a small webserver) to serve a small HTML file including a preview of the camera view.

To install nginx:

```bash
sudo apt install nginx -y
```

We need to configure nginx to serve the OTCamera GUI.
Open the nginx config file `/etc/nginx/sites-available/default` and edit the webserver root.

```bash
sudo nano /etc/nginx/sites-available/default
```

You should see something like this (there may be some comment lines starting with # which you can ignore).

```py title="/etc/nginx/sites-available/default" linenums="1" hl_lines="5"
server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;

        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }

}

```

The important line we need to change is highlighted.
Replace `/var/www/html` with the full path to the `OTCamera/gui/webfiles` folder.
If your username is `pi` it should be `/home/pi/OTCamera/webfiles`.

Restart nginx afterwards to let it know about the new directory:

```sh
sudo systemctl restart nginx.service
```

## Start OTCamera on startup

Now we want to start OTCamera every time the Raspberry starts.
To do so, we will setup and enable a service.
Edit `otcamera.service` inside the OTCamera repository according to your username and path.

```txt hl_lines="5-6" linenums="1" title="./raspi-files/otcamera.service"
[Unit]
Description=This service starts OTCamera and keeps it running

[Service]
User=pi
WorkingDirectory=/home/pi/OTCamera
Restart=always
RestartSec=3
ExecStart=/usr/bin/python3 run.py


[Install]
WantedBy=multi-user.target
```

Now copy the file to `/lib/systemd/system` and enable it:

```sh
sudo cp ./raspi-files/otcamera.service /lib/systemd/system
sudo systemctl daemon-reload
systemctl enable otcamera.service
```

After rebooting the Raspberry you should be able to access it's Wi-Fi ap and to open the OTCamera status site using the Raspberry's ip address: <http://10.10.50.1>
