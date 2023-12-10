# ghcr.io/urbdyn/centos7-devtoolset8-builder from 2023-02-09
# FROM ghcr.io/urbdyn/centos7-devtoolset8-builder@sha256:fdb324516c310aead90212f64481d92303c69c5c7815f409c3fc4f61e4b00894

# This file builds an devtoolset-8 build image for Centos7

# Using CentOS 7 as base image to support building backwards compatible
# binaries with it.
# NOTE: CentOS 8 is EOL as of creating this file on 2023-02-09
FROM centos:8

# Installing tools needed for devtoolset-8 builds
RUN yum install -y which python3 centos-release-scl epel-release && \
    yum install -y ccache devtoolset-8 && \
    yum clean all && \
    rm /var/cache/yum/x86_64/7/timedhosts /var/cache/yum/x86_64/7/timedhosts.txt || true

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
