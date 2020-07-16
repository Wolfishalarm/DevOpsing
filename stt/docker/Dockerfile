## Ubuntu
## - Desktop Image (for desktops, large)
## - Server Image (for VM's running applications)
## - Cloud Image (for dockers, small image, install everything manually)
FROM ubuntu:focal
ENV DEBIAN_FRONTEND noninteractive

# Update Ubuntu OS
RUN apt-get update
RUN apt-get -y dist-upgrade

# Install python
RUN apt-get -y install software-properties-common
RUN apt-add-repository universe
RUN apt-get -y update
RUN apt-get -y install python3-pip python3-dev python-dev

## Disk Image with Ubuntu and Python installed

# Install our application
COPY ascii-telnet-server.py /ascii-telnet-server.py
COPY sw1.txt /sw1.txt
COPY runme.sh /runme.sh

## Run our application
CMD "sh" "/runme.sh"
