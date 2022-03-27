FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    yes | apt-get install git python3 && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Red-Eyed/ConfigFiles.git && \
    ./ConfigFiles/install_linux.py --mode=headless && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/Downloads/*
    
ENTRYPOINT /usr/bin/zsh
