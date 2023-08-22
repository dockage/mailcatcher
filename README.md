# MailCatcher [![GitHub Workflow Status (branch)](https://img.shields.io/github/actions/workflow/status/dockage/mailcatcher/ci.yml?branch=master)](https://github.com/dockage/mailcatcher/actions/workflows/ci.yaml) [![Docker Pulls](https://badgen.net/docker/pulls/dockage/mailcatcher?icon=docker&label=pulls)](https://hub.docker.com/r/dockage/mailcatcher/) [![Docker Stars](https://badgen.net/docker/stars/dockage/mailcatcher?icon=docker&label=stars)](https://hub.docker.com/r/dockage/mailcatcher/)
[MailCatcher](https://mailcatcher.me) runs a super simple SMTP server which catches any message sent to it to display in a web interface.



## Installation
Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/dockage/mailcatcher) and is the recommended method of installation.

```bash
docker pull dockage/mailcatcher:0.9.0
```

Alternately you can build the image locally.

```bash
docker build --tag="$USER/mailcatcher" github.com/dockage/mailcatcher
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
dockage/mailcatcher:0.9.0
```

## Quick reference
* Where to get help: [website](https://dockage.dev/), [documentation](https://dockage.dev/docs/)
* GitHub repo: [dockage/mailcatcher](https://github.com/dockage/mailcatcher)
* Where to file issues: [GitHub issues](https://github.com/dockage/mailcatcher/issues)
* Maintained by: The Dockage team (info at dockage.dev)
* License(s) - [license](https://github.com/dockage/mailcatcher/blob/main/LICENSE), check 3rd party documentation for license information