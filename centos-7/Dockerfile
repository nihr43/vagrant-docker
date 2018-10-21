FROM centos:7

RUN yum update -y && yum install epel-release openssh-server wget -y

#RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin without-password/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh
RUN wget https://github.com/nihr43.keys -O /root/.ssh/authorized_keys
EXPOSE 22
#CMD ["/usr/sbin/sshd", "-D"]
#RUN rc-update add ssh 

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''

CMD ["/usr/sbin/sshd", "-D"]
