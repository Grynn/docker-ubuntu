.PHONY: all

TAG ?= grynn/ubuntu:bionic-in
LATEST := $(shell echo $(TAG) | sed -e 's/:.*/:latest/')


build-timestamp: Dockerfile locale
	docker build . -t ${TAG}
	@echo make push to push to Docker hub. Login with docker login first
	echo date >> build-timestamp

push: 
	docker tag ${TAG} ${LATEST}
	docker push ${TAG}
	docker push ${LATEST}

all: build-timestamp push
	@echo "Done"

