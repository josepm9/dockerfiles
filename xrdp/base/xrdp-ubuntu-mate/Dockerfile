#
# A common Xrdp image that the window-manager images build on
#
# docker build -t xrdp .

# http://www.omgubuntu.co.uk/2014/08/install-mate-desktop-ubuntu-14-04-lts
# http://askubuntu.com/questions/680413/14-04-3-xrdp-gnome-session-session-ubuntu-2d-not-work
FROM ubuntu:14.04

# Install mate-desktop
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq software-properties-common python-software-properties

RUN apt-add-repository ppa:ubuntu-mate-dev/ppa
RUN apt-add-repository ppa:ubuntu-mate-dev/trusty-mate
RUN apt-get update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -yq ubuntu-mate-core ubuntu-mate-desktop xrdp
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -yq vnc4server

# add our user
RUN adduser --disabled-password --gecos "" dockerx 
RUN adduser dockerx sudo
RUN adduser dockerx users
RUN echo "dockerx:docker" | chpasswd

ADD xrdp.ini /etc/xrdp/
RUN echo mate-session > /home/dockerx/.xsession

CMD /etc/init.d/xrdp start && tail -f /var/log/xrdp-sesman.log

# for RDP
EXPOSE 3389
