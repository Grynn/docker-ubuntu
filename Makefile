.PHONY: all

TAG?=grynn/bionic:in

build-timestamp: Dockerfile locale
	docker build . -t ${TAG}
	@echo make push to push to Docker hub. Login with docker login first
	echo date >> build-timestamp

push: 
	docker push ${TAG}

all: build-timestamp push
	@echo "Done"

