FROM docker.io/cimg/node:18.17.1

RUN sudo apt-get -y update \
	&& sudo apt-get install -y --no-install-recommends \
	jq \
	ruby-dev 

RUN sudo gem install aptible-cli:0.16.3 --no-rdoc --no-ri
RUN sudo npm install -g apollo