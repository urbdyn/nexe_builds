FROM ubuntu:latest

RUN apt -qq update

RUN apt -y -qq install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y -qq
RUN apt -y -qq install g++ make ccache python3.8

# python3-distutils python3-apt python2 python3 python3-pip

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
