#!/bin/sh

# This cleanup script will clean the Octane installation from your server.  It assumes that all the default options were taken.  
# if non standard options were used please adjust accordingly. 

# destroy NGA container
docker rm -f nga

# destroy oracle database container
docker rm -f nga_oracle 

# destroy Elastic Search container
docker rm -f nga_es 

# destroy network 
docker network rm nga_nw

# remove created folders
rm -rf /etc/nga
rm -rf /var/log/nga
rm -rf /var/nga