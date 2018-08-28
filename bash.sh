#!/bin/bash
# Basic if statement
if [ "$(docker ps -q -f name=selenium-hub)" ]; then
	echo "running and present - compose down"
elif [ "$(docker ps -aq -f status=exited -f name=selenium-hub)" ]; then
        # cleanup
        echo "not running and present docker-compose down"
    # run your container
else 
    echo "docker-compose up"
fi
