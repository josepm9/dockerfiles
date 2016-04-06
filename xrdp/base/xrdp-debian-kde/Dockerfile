# A basic debian image with
# - xrdp service configured
# - Basic KDE desktop enabled for (rdp) remote connections 
# build with (example):
# docker build -t xrdp-debian-kde .

FROM xrdp-debian

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends kde-plasma-desktop
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends chromium
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends kde-standard
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends kde-config-gtk-style gtk2-engines-oxygen gtk3-engines-oxygen

RUN echo "exec startkde" > /home/dockerx/.xsession

