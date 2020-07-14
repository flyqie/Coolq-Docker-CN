FROM coolq/wine-coolq:latest

# Apt Mirrors
RUN sed -i 's#/archive.ubuntu.com/#/mirrors.ustc.edu.cn/#g' /etc/apt/sources.list

# Dns
RUN echo 'nameserver 8.8.8.8' >> /etc/resolvconf/resolv.conf.d/base
RUN echo 'nameserver 8.8.4.4' >> /etc/resolvconf/resolv.conf.d/base

# Apt Update
RUN apt update
