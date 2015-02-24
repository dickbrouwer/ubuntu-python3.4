FROM phusion/baseimage:0.9.16
MAINTAINER Dick Brouwer <dick@dickbrouwer.com>>

# apt get dependencies
RUN apt-get update && add-apt-repository -y ppa:fkrull/deadsnakes && apt-get install -y \
  software-properties-common \
  build-essential \
  python3.4 \
  python3.4-dev \
  python3-pip

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
