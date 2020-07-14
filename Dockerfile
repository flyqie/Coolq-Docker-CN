FROM coolq/wine-coolq:latest

# Apt Mirrors
RUN sed -i 's#/archive.ubuntu.com/#/mirrors.ustc.edu.cn/#g' /etc/apt/sources.list

# Apt Update
RUN apt update

# Dns
RUN echo 'IyEvdXNyL2Jpbi93aXRoLWNvbnRlbnYgL2Jpbi9iYXNoCmFwdCBhdXRvcmVtb3ZlIC15IHJlc29sdmNvbmYKZWNobyAnbmFtZXNlcnZlciA4LjguOC44JyA+PiAvZXRjL3Jlc29sdi5jb25mCmVjaG8gJ25hbWVzZXJ2ZXIgOC44LjQuNCcgPj4gL2V0Yy9yZXNvbHYuY29uZgpjaGF0dHIgK2kgL2V0Yy9yZXNvbHYuY29uZg==' | base64 -d | > /etc/cont-init.d/100-set-dns
