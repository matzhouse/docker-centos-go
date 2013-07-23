# DOCKER-VERSION 0.3.4
FROM    centos

# get the Go binary
RUN wget https://go.googlecode.com/files/go1.1.1.linux-amd64.tar.gz
# Untar
RUN    tar xvf https://go.googlecode.com/files/go1.1.1.linux-amd64.tar.gz 

# move to /usr/local
RUN mkdir -p /usr/local && mv ./go /usr/local

RUN export GOROOT=/usr/local/go && export PATH=$PATH:$GOROOT/bin

EXPOSE 8080
