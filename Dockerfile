# pull official base image
FROM python:3.11.4-slim-buster

RUN apt-get update && apt-get install -y netcat

# copy project
COPY . /usr/src

# Make entrypointh.sh executable
COPY ./entrypoint.sh .
RUN chmod +x entrypoint.sh

# set work directory
WORKDIR /usr/src/mysite

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# run entrypoint.sh
ENTRYPOINT ["/usr/src/entrypoint.sh"]
