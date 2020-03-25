FROM docker.io/circleci/node:12.13.0

RUN sudo apt-get -y update \
	&& sudo apt-get install -y ruby-dev

RUN sudo gem install aptible-cli:0.16.3 --no-rdoc --no-ri