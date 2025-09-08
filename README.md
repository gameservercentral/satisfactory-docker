# satisfactory-docker

[![Nightly Build](https://github.com/gameservercentral/steamcmd-docker-satisfactory/actions/workflows/build.yml/badge.svg)](https://github.com/gameservercentral/steamcmd-docker-satisfactory/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This project provides a Docker image that uses [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) to easily install and update dedicated Satisfactory servers.

> **Note:** This repository and its contents are not affiliated with, endorsed, or supported by Steam or Coffee Stain Studios. 

## Build the Docker Image

To build the image locally, run:

```sh
docker build -t satisfactory-local .
```

## Run the Locally Built Image

To run the container with the common Satisfactory Dedicated Server ports exposed and start the server automatically, use `/data/FactoryServer.sh` as the entrypoint:

```sh
docker run -it --rm \
  -v /path/to/local/saves:/data-preseed/FactoryGame/Saved/SaveGames \
  -p 7777:7777/udp \
  -p 15000:15000/udp \
  -p 15777:15777/udp \
  satisfactory-local /data-preseed/FactoryServer.sh
```
