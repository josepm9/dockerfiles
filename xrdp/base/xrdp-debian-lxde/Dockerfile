# A basic debian image with
# - xrdp service configured
# - Basic LXDE desktop enabled for (rdp) remote connections 
# build with (example):
# docker build -t xrdp-debian-lxde .

FROM xrdp-debian

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends lxde-core
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends chromium
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends lxde
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends task-lxde-desktop

RUN echo "exec startlxde" > /home/dockerx/.xsession

