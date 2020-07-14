FROM coolq/wine-coolq:latest

# Apt Mirrors
RUN sed -i 's#/archive.ubuntu.com/#/mirrors.ustc.edu.cn/#g' /etc/apt/sources.list

# Apt Update
RUN apt update

# Dns
RUN echo 'YXB0IGF1dG9yZW1vdmUgLXkgcmVzb2x2Y29uZgplY2hvICduYW1lc2VydmVyIDguOC44LjgnID4+IC9ldGMvcmVzb2x2LmNvbmYKZWNobyAnbmFtZXNlcnZlciA4LjguNC40JyA+PiAvZXRjL3Jlc29sdi5jb25mCmNoYXR0ciAraSAvZXRjL3Jlc29sdi5jb25m' | base64 -d | > /etc/cont-init.d/100-set-dns
