FROM python:3.8-buster
MAINTAINER hayatek

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN chmod +x /app/requirements.txt
RUN pip install -r requirements.txt
# copy project
COPY . /app