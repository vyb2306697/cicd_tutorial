FROM ubuntu:22.04
MAINTAINER Tuan Thai "tuanthai@example.com"
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://vn.archive.ubuntu.com/ubuntu/|g' /etc/apt/sources.list
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
