FROM debian:jessie

ENTRYPOINT ["/code/entrypoint.sh"]

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    locales python python-pip virtualenv

RUN echo 'en_AU.UTF-8 UTF-8' > /etc/locale.gen && locale-gen && update-locale LANG=en_AU.UTF-8
ENV LANG en_AU.UTF-8

RUN mkdir -p /code
WORKDIR /code

ADD . /code
