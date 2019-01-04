FROM docker

# pip

RUN apk update \
	&& apk add py-pip \
	&& rm -rf /var/cache/apk/*

# Docker Compose

RUN pip install docker-compose

# AWS CLI

RUN pip install awscli --upgrade --user \
	&& ln -s ~/.local/bin/aws /usr/local/bin/aws
