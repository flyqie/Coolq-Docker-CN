FROM coolq/wine-coolq:latest

# Apt Mirrors
RUN sed -i 's#/archive.ubuntu.com/#/mirrors.ustc.edu.cn/#g' /etc/apt/sources.list

# Apt Update
RUN apt update

# Dns
RUN apt autoremove -y resolvconf
RUN echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
RUN echo 'nameserver 8.8.4.4' >> /etc/resolv.conf
RUN chattr +i /etc/resolv.conf
