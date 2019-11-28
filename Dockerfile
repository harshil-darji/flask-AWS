FROM python:3.5-slim

MAINTAINER Harshil Darji "harshildarji2001@gmail.com"

RUN apt-get update
RUN apt-get install git -y
RUN pip3 install Flask

USER root

#RUN mkdir -p /app
#ADD . /app

RUN git clone https://github.com/harshil-darji/flask-AWS

WORKDIR /flask-AWS

ENTRYPOINT ["python3"]

EXPOSE 5000
ENV NAME World

CMD ["hello.py"]
