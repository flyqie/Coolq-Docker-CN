FROM coolq/wine-coolq:latest

# Apt Mirrors
RUN sed -i 's#/archive.ubuntu.com/#/mirrors.163.com/#g' /etc/apt/sources.list

# Apt Update
RUN apt update

# Dns
RUN echo '#!/usr/bin/with-contenv /bin/bash' > /etc/cont-init.d/100-set-dns
RUN echo "echo 'nameserver 8.8.8.8' >> /etc/resolv.conf" >> /etc/cont-init.d/100-set-dns
RUN echo "echo 'nameserver 8.8.4.4' >> /etc/resolv.conf" >> /etc/cont-init.d/100-set-dns
