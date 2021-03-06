include local.sh

all: help


# target: help - Display callable targets.
help: 
ifeq ($(findstring help,$(COMMAND)),help)
	@#
else
	@egrep "^# target:" [Mm]akefile
endif


# target: build - build base image
.PHONY: build
build:
	@echo "---> build ${BASE_PYTHON_IMAGE}"
	@docker build -t ${BASE_PYTHON_IMAGE} $(BASE_DIR)
	@echo "		end"


# target: bootstrap - bootstrap service
.PHONY: bootstrap
bootstrap:
	@docker-compose \
		-p $(PROJECT) \
		-f bootstrap.yml \
		run --rm $(CONTAINER)


# target: shell - shell base python image
.PHONY: shell
shell:
	@docker-compose \
		-p $(PROJECT) \
		-f run.yml \
		run --rm --service-ports $(CONTAINER) \
		/bin/bash
