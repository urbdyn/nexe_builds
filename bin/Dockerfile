FROM centos:7

RUN yum install -y which python3 && \
    yum install -y centos-release-scl && \
    yum install -y devtoolset-8

RUN yum -y install epel-release && \
    yum install -y ccache

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
