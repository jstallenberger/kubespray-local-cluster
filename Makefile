.PHONY: ansible-kubespray-up

ANSIBLE_UNAME ?= $(shell id -un)
ANSIBLE_KUBESPRAY_VERSION ?= 2.21.0

ansible-kubespray-up: # start Kubespray Docker container
	docker run -it --rm \
		-e ANSIBLE_UNAME=$(ANSIBLE_UNAME) \
		-e ANSIBLE_HOST_KEY_CHECKING=False \
		--mount type=bind,source=$(PWD)/inventory,dst=/inventory \
		--mount type=bind,source=${HOME}/.ssh/id_rsa,dst=/root/.ssh/id_rsa \
		quay.io/kubespray/kubespray:v$(ANSIBLE_KUBESPRAY_VERSION) \
		bash
