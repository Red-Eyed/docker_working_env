FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Red-Eyed/ConfigFiles.git && \
    ./ConfigFiles/install_linux.py --mode=headless && \
    rm -rf /var/lib/apt/lists/*
    
ENTRYPOINT /usr/bin/zsh
