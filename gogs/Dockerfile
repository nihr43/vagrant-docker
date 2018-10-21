FROM debian:buster

RUN apt update && apt install -y wget openrc openssh-server

#RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin without-password/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh
RUN wget https://github.com/nihr43.keys -O /root/.ssh/authorized_keys
EXPOSE 22
RUN rc-update add ssh 


RUN apt install wget -y
RUN wget https://cdn.gogs.io/0.11.66/gogs_0.11.66_linux_amd64.tar.gz -O /tmp/gogs_0.11.66_linux_amd64.tar.gz
RUN tar -xzvf /tmp/gogs_0.11.66_linux_amd64.tar.gz -C /srv/
EXPOSE 3000 


CMD ["/usr/sbin/openrc-init"]
