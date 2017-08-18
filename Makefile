default: docker_build

DOCKER_IMAGE ?= lachlanevenson/k8s-helm
DOCKER_TAG ?= `git rev-parse --abbrev-ref HEAD`

ifneq ($(DOCKER_TAG), master)
	DOCKER_TAG = latest
endif

docker_build:
	docker build \
	  --build-arg VCS_REF=`git rev-parse --short HEAD` \
	  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
	  -t $(DOCKER_IMAGE):$(DOCKER_TAG) .
	  
docker_push:
	# Push to DockerHub
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)

test:
	docker run $(DOCKER_IMAGE):$(DOCKER_TAG) version --client
