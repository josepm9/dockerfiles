# A basic debian image with xrdp service configured
# build with (example):
# docker build -t xrdp-debian .

FROM debian:jessie

# Install requirements
RUN apt-get update
RUN apt-get install -yq xrdp

# Root password
RUN echo "root:root" | chpasswd

# Xrdp ini file
RUN echo [globals]'\n'\
bitmap_cache=yes'\n'\
bitmap_compression=yes'\n'\
port=3389'\n'\
crypt_level=low'\n'\
channel_code=1'\n'\
max_bpp=24'\n'\
'\n'\
[xrdp1]'\n'\
name=sesman-Xvnc'\n'\
lib=libvnc.so'\n'\
username=root'\n'\
password=root'\n'\
ip=127.0.0.1'\n'\
port=-1'\n'\
> /etc/xrdp/xrdp.ini

# xrdp service start
CMD /etc/init.d/xrdp start && tail -f /var/log/xrdp-sesman.log

# for RDP
EXPOSE 3389
