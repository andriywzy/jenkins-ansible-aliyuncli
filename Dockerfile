FROM jenkins:2.46.2

USER root
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu jessie main" >> /etc/apt/sources.list
    apt-get update && \
    apt-get -y install ansible python-pip && \
    pip install aliyuncli aliyun-python-sdk-slb aliyun-python-sdk-ecs && \
    rm -rf /var/lib/apt/lists/*
