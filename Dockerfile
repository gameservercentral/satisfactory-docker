FROM ghcr.io/gameservercentral/steamcmd-docker
USER user
RUN steamcmd +login anonymous +force_install_dir /data +app_update 1690800 validate +quit
