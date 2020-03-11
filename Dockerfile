FROM ubuntu:16.04

MAINTAINER Hussnain Javed "hussnain.jav3d2gmail.com"

RUN     apt-get update -y \
        && apt-get install -y python3-pip python3-dev \
        && pip3 install --upgrade pip \
        && pip3 install scikit-build  \
        && pip3 install cmake  

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt

COPY . /

EXPOSE 2020

ENTRYPOINT [ "python3" ]

CMD [ "app/app.py" ]