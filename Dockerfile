FROM ubuntu:14.04

MAINTAINER Nanda Kishor "nkd@24hourkirtan.fm"
ENV DEBIAN_FRONTEND noninteractive

#Install wget
RUN apt-get update && apt-get install -y wget

#get latest stable build of Icecast from Xiph.org
RUN sh -c "echo deb http://download.opensuse.org/repositories/multimedia:/xiph/xUbuntu_14.04/ ./ >>/etc/apt/sources.list.d/xiph.list" && \
    wget -qO - http://icecast.org/multimedia-obs.key | sudo apt-key add - && \
    apt-get update && \
    apt-get install -y icecast2

#Copy configuration and enable init.d script 
ADD ./etc /etc

EXPOSE 8000
VOLUME ["/config", "/var/log/icecast2", "/etc/icecast2"]
RUN chown -R icecast2 /etc/icecast2

#Start Icecast and append non-end command to prevent container to exit
CMD /etc/init.d/icecast2 start && tail -F /var/log/icecast2/error.log
