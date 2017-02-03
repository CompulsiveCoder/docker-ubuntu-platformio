FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y curl python

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

RUN python get-pip.py

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"
