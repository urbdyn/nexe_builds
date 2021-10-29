FROM centos:7

RUN yum install -y which python3 centos-release-scl epel-release
RUN yum install -y ccache devtoolset-8

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
