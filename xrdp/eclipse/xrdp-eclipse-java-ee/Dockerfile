# An example pre-configured development environment
# - xrdp service configured
# - Basic MATE desktop enabled for (rdp) remote connections 
# - Chromiun, openjdk8, maven, eclipse for java developers
# build with (example):
# docker build -t xrdp-eclipse-java-ee .

FROM xrdp-debian-mate

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends curl

# JDK (See anapsix example for other JDKs)

RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends openjdk-8-jre-headless openjdk-8-jdk openjdk-8-source

# Chromium

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends chromium

# Eclipse

RUN curl http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/technology/epp/downloads/release/mars/2/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz \
	| tar -C /opt -xz

COPY eclipse.desktop.txt /usr/share/applications/Eclipse.desktop
RUN mkdir /root/Desktop
COPY eclipse.desktop.txt /root/Desktop/Eclipse.desktop

# Maven

RUN curl http://apache.rediris.es/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | tar -C /opt -xz 
RUN ln -s /opt/apache-maven-3.3.9 /opt/maven
RUN echo "export MAVEN_HOME=/opt/maven" >> /root/.bashrc
RUN echo "export PATH=${PATH}:${MAVEN_HOME}/bin" >> /root/.bashrc
RUN ln -s /opt/maven/bin/mvn /usr/bin/mvn

# Spanish keyboard...
COPY xrdp.es.ini /etc/xrdp/km-0409.ini

# Cleanup

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
