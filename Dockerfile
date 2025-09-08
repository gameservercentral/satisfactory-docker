FROM ghcr.io/gameservercentral/steamcmd
USER root
RUN mkdir -p /data-preseed && chown user:user /data-preseed
USER user 
RUN steamcmd +force_install_dir /data-preseed +login anonymous +app_update 1690800 validate +quit
