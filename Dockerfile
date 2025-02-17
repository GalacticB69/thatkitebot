FROM python:3.10-bullseye

WORKDIR /app/

COPY ./requirements.txt /app/requirements.txt
COPY ./thatkitebot /app/thatkitebot


RUN apt-get update

RUN apt-get install -y python3-wand python3-numpy gcc libfreeimage3 libwebp-dev libjpeg-turbo-progs git

RUN pip3 install --upgrade pip && pip3 install -r requirements.txt


