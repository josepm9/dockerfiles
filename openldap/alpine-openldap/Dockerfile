# An Alpine image slapd

from alpine

RUN apk update && apk add openldap

# Openldap service configuration
RUN sed -i '1s/^/disallow bind_anon\n/' /etc/openldap/slapd.conf
RUN echo -e "loglevel 1\n\
include /etc/openldap/schema/cosine.schema\n\
include /etc/openldap/schema/inetorgperson.schema" >> /etc/openldap/slapd.conf
RUN echo "local4.* /var/log/openldap" >> /etc/syslog.conf

# Initialization of directory

# Startup script: create entries the first time only
RUN echo -e "#!/bin/sh\n\
test ! -f /init_done && \
for f in /init/*.ldif; do /usr/sbin/slapadd -l \$f; done &&\
echo 1 >> /init_done" > /load.sh
RUN chmod +x /load.sh && mkdir /init

# Default entries
RUN echo -e "\n\
dn: dc=my-domain,dc=com\n\
dc: my-domain\n\
o: my-domain\n\
description: LDAP BaseDN\n\
objectClass: top\n\
objectClass: dcObject\n\
objectClass: organization\n\
structuralObjectClass: organization\n\
\n\
dn: uid=guest,dc=my-domain,dc=com\n\
objectClass: inetOrgPerson\n\
objectClass: person\n\
cn: guest\n\
sn: guest\n\
uid: guest\n\
userPassword: guest" > /init/00_core.ldif

# Start
CMD syslogd && /usr/lib/slapd -u ldap -g ldap && /load.sh && tail -f /var/log/openldap

EXPOSE 389