FROM python

MAINTAINER Harshil Darji "harshildarji2001@gmail.com"

RUN apt-get update
RUN apt-get install git -y
RUN pip3 install Flask

COPY . /flask
WORKDIR /flask

ENTRYPOINT ["python"]

#EXPOSE  5000
#CMD ["python", "/home/ec2-user/DockerFiles/hello.py", "-p 5000"]

CMD ["hello.py"]