# A basic debian image with
# - xrdp service configured
# - Basic MATE desktop enabled for (rdp) remote connections 
# build with (example):
# docker build -t xrdp-debian-mate .

FROM xrdp-debian

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends mate-desktop-environment-core

RUN echo "mate-session" > /root/.xsession