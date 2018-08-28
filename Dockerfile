#Nginx
#
#Version			0.0.1

FROM ubuntu

MAINTAINER Anand Bhupathiraju <anandbhupathiraju@icloud.com>

LABEL Description="This is my nginx service used with ubuntu base image"


RUN apt-get update && apt-get upgrade \
		apt-get install -y \
		inotify-tools \
		nginx \
		openssh-server \
		openssh-client \
		vim \
		git \
		wget \
		awscli \
		curl \
		&& rm -rf /var/lib/apt/lists/*
		sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.original
		sudo chmod a-w /etc/ssh/sshd_config.original
		sudo systemctl restart sshd.service
		
		

#ADD or COPY can unzip the tar files and website URLs automatically and to the defined location.
ADD https://github.com/anandzy/website /var/www/html/


#ENV will help to add the environment variables. Both durind the build & when running the result.


#The below both are some commands can be used based on knowledge.
#ENTRYPOINT
#CMD


#EXPOSE 81:80

#VOLUME


#WORKDIR

#USER
