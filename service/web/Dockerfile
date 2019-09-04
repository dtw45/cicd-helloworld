# Dockerfile

# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

# Copy project
COPY helloworld /code/

