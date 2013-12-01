FROM ubuntu:quantal
MAINTAINER Manfred Touron m@42.am

RUN apt-get update
RUN apt-get -y install john
# RUN apt-get -y install wamerican wbritish
RUN ln -s /etc/john/john.conf /john.ini
VOLUME ["/data"]

ENTRYPOINT ["john"]
