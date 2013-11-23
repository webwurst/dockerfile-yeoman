# docker-version 0.6

from webwurst/ubuntu:saucy
run apt-get update && apt-get -y upgrade

# helper
run apt-get -y install git vim less gzip

# default-jre-headless

# nodejs
run apt-get -y install nodejs nodejs-legacy npm
run npm install -g npm

# yo, grunt, bower
run adduser --disabled-password yo
run npm install -g yo

add . /docker
run chown yo:yo /docker --recursive

workdir /docker
cmd ["bash"]
expose 9000