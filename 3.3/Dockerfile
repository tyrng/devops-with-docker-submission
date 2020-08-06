FROM ubuntu:16.04
COPY ./start.sh /usr/local/bin/
RUN apt update \
    && apt install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
        git \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable" \
    && apt update \
    && apt install -y docker-ce docker-ce-cli containerd.io \
    && chmod +x /usr/local/bin/start.sh \
    && apt-get purge -y --auto-remove curl \ 
        apt-transport-https \
        gnupg-agent \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/* 
ENTRYPOINT []
CMD [ "start.sh" ]