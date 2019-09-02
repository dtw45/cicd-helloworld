# Dockerfile

# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Copy project
COPY helloworld /code/
COPY requirements.txt /requirements.txt

# Install dependencies
RUN pip3 install -r /requirements.txt 

