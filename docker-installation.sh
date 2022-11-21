#!/bin/bash
  2 #Author: Nad
    3 #Date 11-21-2022
      4 #Description: docker installation
        5 
	  6 echo "beginning docker installation"
	    7 
	      8 sudo yum remove docker \
		        9                   docker-client \
			 10                   docker-client-latest \
			  11                   docker-common \
			   12                   docker-latest \
			    13                   docker-latest-logrotate \
			     14                   docker-logrotate \
			      15                   docker-engine
	       16 
	        17 sudo yum install -y yum-utils
		 18 sudo yum-config-manager \
			  19 --add-repo \
			   20     https://download.docker.com/linux/centos/docker-ce.repo
		  21 
		   22  sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
		    23 yum list docker-ce --showduplicates | sort -r
		     24 
		      25 sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin
		       26 
		        27 sudo systemctl start docker
			 28 
			  29 echo "end of docker installation"
