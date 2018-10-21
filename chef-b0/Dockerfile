FROM centos:7

RUN yum update -y && yum install epel-release openssh-server wget -y

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin without-password/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh
RUN wget https://github.com/nihr43.keys -O /root/.ssh/authorized_keys
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
EXPOSE 22



RUN wget https://packages.chef.io/files/stable/chef-backend/2.0.30/el/7/chef-backend-2.0.30-1.el7.x86_64.rpm -O /tmp/chef.rpm
RUN rpm -vhi /tmp/chef.rpm



CMD ["/usr/sbin/sshd", "-D"]
