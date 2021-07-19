DOCKER_IMAGE ?= jiwonaid/openstack-heat-jq
OPENSTACK_HEAT_VERSION = "stein-ubuntu_bionic-20210514"

all: build push

build:
	@docker build \
	  --build-arg OPENSTACK_HEAT_VERSION=$(OPENSTACK_HEAT_VERSION) \
	  -t $(DOCKER_IMAGE):$(OPENSTACK_HEAT_VERSION) .

push:
	@docker push $(DOCKER_IMAGE):$(OPENSTACK_HEAT_VERSION)
