# Salea Logic Remote Docker Container

This container starts a VNC server and an instance of Salea's Logic Analyzer software.
It should be able to run headless (without a running xserver).

Rquirements:
	- Linux (64bit)
	- Docker

## How to build

	docker build .

## How to run
Replace ${DOCKER_IMAGE_ID} with the id from the last line of `docker build .`, it should read something similar to
`Successfully built 7b3fbecc21fe` ( replace ${DOCKER_IMAGE_ID} with 7b3fbecc21fe )

	docker run \
		--privileged  -v /dev/bus/usb:/dev/bus/usb \
		-e "GEOMETRY=1800x800" \
		-p 5901:5901 \
		--name logic \
		-it ${DOCKER_IMAGE_ID} \

	docker start logic

## Delete container

	docker stop logic
	docker rm logic

	
