# We Use an official Python runtime as a parent image
FROM python:3.8-alpine

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# Make the directory for deploy our api and change our
# working directory to it. 
RUN mkdir /api
WORKDIR /api

# install our dependency first to use cache layaring
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy our code into container
COPY . .

VOLUME [ "/app" ]

# expose our port
EXPOSE 8000

# migration and runserver
CMD python manage.py makemigrations && \
    python manage.py migrate && \
    python manage.py runserver 0.0.0.0:8000