NAME := jetty-runner
DOCKER_REPO := quay.io
DOCKER_IMAGE := osterzel/jetty-runner
VERSION := dev 

build:
	docker build -t ${DOCKER_REPO}/${DOCKER_IMAGE}:${VERSION} . 

test:
	@echo "Creating test container"
	@docker run -d --name ${NAME} ${DOCKER_REPO}/${DOCKER_IMAGE}:${VERSION}
	@echo "Waiting for container to be ready"
	@sleep 5
	@echo "Testing access to port 8080"
	@docker exec -t -i ${NAME} curl --silent localhost:8080 >/dev/null
	@echo "Deleting test container"
	@docker rm -f ${NAME}
	
