FROM jenkins:2.46.2

RUN apt-get update && \
    apt-get -y install ansible python-pip && \
    pip install aliyuncli aliyun-python-sdk-slb aliyun-python-sdk-ecs && \
    rm -rf /var/lib/apt/lists/*


