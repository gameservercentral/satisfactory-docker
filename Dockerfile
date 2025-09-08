FROM ghcr.io/gameservercentral/steamcmd
USER root
RUN mkdir -p /data-preseed && chown user:user /data-preseed
RUN steamcmd +login anonymous +force_install_dir /data-preseed +quit
USER user 
RUN steamcmd +login anonymous +force_install_dir /data-preseed +app_update 1690800 validate +quit