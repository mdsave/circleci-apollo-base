FROM docker.io/circleci/node:16.15.1

RUN sudo apt-get -y update \
	&& sudo apt-get install -y --no-install-recommends \
		curl \
		jq \
		ruby-dev 

RUN sudo gem install aptible-cli:0.16.3 --no-rdoc --no-ri
RUN sudo npm install -g newman
