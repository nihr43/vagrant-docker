FROM alpine:3.8
#
## dockerfile built to behave like a regular server.  boots openrc, loads sshd, and listens for root

# install ssh server
RUN apk update && apk upgrade

RUN apk add openssh openrc
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin without-password/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh
RUN wget https://github.com/nihr43.keys -O /root/.ssh/authorized_keys
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
RUN rc-update add sshd
EXPOSE 22

ENTRYPOINT /sbin/openrc-init
