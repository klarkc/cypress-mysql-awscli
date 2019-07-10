FROM klarkc/node-cypress-mysql
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    python3-setuptools \
    python3-dev \
    zip \
    jq
RUN easy_install3 pip
RUN pip install --upgrade --user awsebcli awscli

ENV PATH "${PATH}:/root/.local/bin"