FROM ghcr.io/gameservercentral/steamcmd
USER user
RUN mkdir -p /data-preseed
RUN steamcmd +login anonymous +force_install_dir /data-preseed +app_update 1690800 validate +quit
