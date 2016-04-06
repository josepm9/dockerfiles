# A basic debian image with
# - xrdp service configured
# - Basic XFCE desktop enabled for (rdp) remote connections 
# build with (example):
# docker build -t xrdp-debian-xfce .

FROM xrdp-debian

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends xfdesktop4
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends xfce4-panel
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends xfwm4 thunar xterm
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends chromium
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq xfce4

RUN echo "xterm & xfce4-panel & xfwm4 & xfdesktop" > /home/dockerx/.xsession

