# pull official base image
FROM python:3.11.4-slim-buster

RUN apt-get update && apt-get install vim -y

# copy project
COPY . /usr/src

# set work directory
WORKDIR /usr/src/mysite

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
