FROM centos

RUN yum install -y wget vim

RUN  wget https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 

#ADD ./assets/confd-0.16.0-linux-amd64 ./

RUN mkdir -p /opt/confd/bin && \
    mv confd-0.16.0-linux-amd64 /opt/confd/bin/confd && \
    chmod +x /opt/confd/bin/confd 

ENV PATH="$PATH:/opt/confd/bin"

RUN mkdir -p /etc/confd/{conf.d,templates}


