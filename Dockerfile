FROM jenkins/jenkins
COPY ./copystuff/docker-compose.yaml  /build
WORKDIR /build
USER root
RUN apt update
RUN apt install curl
RUN curl https://get.docker.com | bash
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/dokcer-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose 
