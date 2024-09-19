#!/bin/bash

echo "Cleaning up Docker containers, volumes and networks..."
docker stop $(docker ps -qa) > /dev/null
docker rm $(docker ps -qa) > /dev/null
docker rmi -f $(docker images -qa) > /dev/null
docker volume rm $(docker volume ls -q) > /dev/null
docker network ls -q | while read network_id; do \
   network_name=$(docker network inspect -f '{{.Name}}' $network_id); \
   if [ "$network_name" != "bridge" ] && [ "$network_name" != "host" ] && [ "$network_name" != "none" ]; then \
   	docker network rm $network_id > /dev/null; \
   fi; \
done
echo "Cleanup complete."