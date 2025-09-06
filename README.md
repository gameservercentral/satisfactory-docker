# satisfactory-docker

[![Nightly Build](https://github.com/gameservercentral/steamcmd-docker-satisfactory/actions/workflows/build.yml/badge.svg)](https://github.com/gameservercentral/steamcmd-docker-satisfactory/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This project provides a Docker image that uses [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) to easily install and update dedicated Satisfactory servers.

## Usage

```sh
docker run -it --rm \
  -v /path/to/server/data:/data \
  ghcr.io/gameservercentral/satisfactory-docker
```