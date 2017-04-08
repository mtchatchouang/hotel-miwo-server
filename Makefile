build     : ## maven build all projects
build:
	@mvn clean package docker:build

docker    : ## build everything and run it in docker containers
docker: build
	@docker-compose build
	@docker-compose up

help      : ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY : all buildpush pull help dev