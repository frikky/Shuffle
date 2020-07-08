#!/bin/sh
docker stop shuffle-backend
docker rm shuffle-backend
docker rmi docker.io/frikky/shuffle:backend 

docker build . -t docker.io/frikky/shuffle:backend
docker push docker.io/frikky/shuffle:backend

echo "Starting server"
#docker run -it \
#	-p 5001:5001 \
#	-v /var/run/docker.sock:/var/run/docker.sock \
#	--env DATASTORE_EMULATOR_HOST=192.168.3.6:8000 \
#	docker.io/frikky/shuffle:backend	
