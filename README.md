# MailCatcher [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/mailcatcher.svg?style=flat)](https://hub.docker.com/r/dockage/mailcatcher/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/mailcatcher.svg?style=flat)](https://hub.docker.com/r/dockage/mailcatcher/) [![MicroBadger Size (latest)](https://img.shields.io/microbadger/image-size/dockage/mailcatcher/latest.svg)](https://microbadger.com/images/dockage/mailcatcher:latest) [![MicroBadger Layers (latest)](https://img.shields.io/microbadger/layers/dockage/mailcatcher/latest.svg)](https://microbadger.com/images/dockage/mailcatcher:latest) [![Build Status](https://cloud.drone.io/api/badges/dockage/mailcatcher/status.svg)](https://cloud.drone.io/dockage/mailcatcher)
[MailCatcher](https://mailcatcher.me) runs a super simple SMTP server which catches any message sent to it to display in a web interface.



## Installation

Pull the image from the docker index. This is the recommended method of installation as it is easier to update image. These builds are performed by the **Docker Trusted Build** service.

```bash
docker pull dockage/mailcatcher:0.7.1
```

Alternately you can build the image locally.

```bash
git clone https://github.com/dockage/mailcatcher.git
cd mailcatcher
docker build --tag="$USER/mailcatcher" .
```


## Quick Start

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
wget https://raw.githubusercontent.com/dockage/mailcatcher/master/docker-compose.yml
docker-compose up
```

Alternately, you can manually launch the `mailcatcher` container.

```bash
docker run --name='mailcatcher' -d \
  --publish=1080:1080 \
  --publish=1025:1025 \
dockage/mailcatcher:0.7.1
```