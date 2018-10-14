FROM alpine:3.8
#
## dockerfile built to behave like a classical server.  boots openrc, loads sshd, and listens for root

# add openssh and clean
RUN apk update && apk upgrade
RUN apk add openssh openrc && rm  -rf /tmp/* /var/cache/apk/*

## FIXME vv

#RUN adduser -h /home/vagrant -s /bin/bash -D vagrant
#RUN mkdir /home/vagrant/.ssh
#RUN echo "key" > /home/vagrant/.ssh/authorized_keys
#RUN chown -R vagrant /home/vagrant/.ssh

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin without-password/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh
RUN wget https://github.com/nihr43.keys -O /root/.ssh/authorized_keys

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''

RUN rc-update add sshd
EXPOSE 22

ENTRYPOINT /sbin/openrc-init