FROM docker.io/circleci/node:16.13.1

RUN sudo apt-get -y update \
	&& sudo apt-get install -y --no-install-recommends \
		curl \
		jq \
		ruby-dev 

RUN sudo gem install aptible-cli -v 0.19.6 --platform ruby
RUN sudo npm install -g newman

