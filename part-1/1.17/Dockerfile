FROM ubuntu:20.04

ENV TZ=Asia/Kuala_Lumpur
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update \
    && apt install -y sudo curl locales nodejs npm wget nano \
    && locale-gen en_US.UTF-8 \
    && adduser --quiet --disabled-password \
    --home /home/devuser \
    --gecos "User" devuser && \
    echo "devuser:Password123" | \
    chpasswd &&  usermod -aG sudo devuser
USER devuser
RUN echo "cd ~/projects" >> ~/.bashrc
CMD ["/bin/bash"]
