mongo: 
	docker-compose up
down:
	docker-compose down
clean:
	rm -rf ./deployment/data/db
image:
	docker build -t keystone . && docker image prune -f
remove:
	docker rm -f keystone
stop:
	docker container stop keystone
start:
	docker container start keystone
logs:
	docker container logs -f keystone
run:
	docker container run -d --publish 6080:6080  --network keystone-docker_default -v $$(pwd)/src:/src/app/src --name keystone keystone
console:
	docker container exec -it keystone bash
