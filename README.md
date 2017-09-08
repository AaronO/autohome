# autohome

RaspberryPI + jeedom + habridge + homebridge

## Setup on your raspberry Pi

### 1. Install a modern version of docker

```
curl https://get.docker.com | sudo bash
```

### 2. Download docker-compose.yml to your RPi

Download the latest docker-compose.yml:

```
curl https://raw.githubusercontent.com/AaronO/autohome/master/docker-compose.yml > docker-compose.yml
```

### 3. Run it

Then start it:

```
sudo docker-compose up
```

### 4. That's all
