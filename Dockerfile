FROM ubuntu:latest

MAINTAINER PAPA DE MANGO <yoondk19@gmail.com>

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

RUN apt-get install -y vim

RUN apt-get install -y git

WORKDIR /

RUN git clone https://github.com/mango-papa/simple-sql.git

WORKDIR /simple-sql

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "src/main.py" ]
