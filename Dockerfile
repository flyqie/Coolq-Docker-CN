FROM coolq/wine-coolq:latest
RUN sed -i 's#/archive.ubuntu.com/#/mirrors.ustc.edu.cn/#g' /etc/apt/sources.list
RUN apt update
