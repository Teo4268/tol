
FROM ubuntu:latest

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt update && apt upgrade -y && apt-get update && apt-get install -y htop \
    curl \
    ca-certificates \
    git \
    sudo \ 
    unzip \
    nodejs \
    neofetch
RUN neofetch

RUN git clone https://github.com/Teo4268/tol.git && cd tol && node app 5.js
