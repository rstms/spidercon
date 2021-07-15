# spidercon makefile
#

BUILD=docker-compose build --build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g) 

build:
	${BUILD}

rebuild: 
	${BUILD} --no-cache

run:
	docker-compose run spidercon
