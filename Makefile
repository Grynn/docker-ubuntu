.PHONY: all

TAG:=grynn/bionic:in

all: Dockerfile
	docker build . -t ${TAG}
	docker push ${TAG}
