java-workspace
=====================

This repository contains **Dockerfile** for D1 team java workspace. 
It can be found at [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/deeone/java-workspace/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [ciandtsoftware/appengine-java-maven](https://registry.hub.docker.com/u/ciandtsoftware/appengine-java-maven/)

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/deeone/java-workspace/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull deeone/java-workspace`

   (alternatively, you can build an image from Dockerfile: `docker build -t="deeone/java-workspace" github.com/d1-oss/docker-docker-java-workspace`)


### Usage

    docker run -u 1000 -it -p 8080:8080 --volume $SSH_AUTH_SOCK:/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent --volume /home/fabio/Development:/workspace --volume /home/fabio/.m2:/home/deeone/.m2  --hostname work --name deeone deeone/java-workspace

#### Run `java`

    docker run -it --rm deeone/java-workspace java

#### Run `mvn`

    docker run -it --rm deeone/java-workspace mvn
