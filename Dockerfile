FROM ubuntu:latest

 

USER root

RUN apt-get update

RUN apt-get install -y curl

RUN apt-get install sudo -y

RUN apt-get install -y build-essential

# RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo  -E bash -

RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

RUN apt-get install -y nodejs git

RUN mkdir pull

ADD . pull/

RUN chmod -R 777 pull/

WORKDIR pull

RUN npm install

EXPOSE 3000

CMD ["npm" , "start"]
