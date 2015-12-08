# Saleae Logic - Remote Docker Container

This container starts a VNC server and an instance of Saleae's Logic Analyzer software.
It should be able to run headless (without a running xserver).

Requirements:
* Linux (64bit)
* Docker

## How to build the image
Change the password in `password.txt`

	docker build .

To update the password the image needs to build again (without cache)

	docker build -no-cache .

You also have to create a new container if you want to change the password.

## How to run

At first we need to create a container from the image.


Replace ${DOCKER_IMAGE_ID} with the id from the last line of `docker build .`, it should read something similar to
`Successfully built 7b3fbecc21fe` ( replace ${DOCKER_IMAGE_ID} with 7b3fbecc21fe )

	docker run \
		--privileged  -v /dev/bus/usb:/dev/bus/usb \
		-e "GEOMETRY=1800x800" \
		-p 5901:5901 \
		--name logic \
		-it ${DOCKER_IMAGE_ID}

Start the container

	docker start logic

The VNC server will now listen on port 5901 on your netork interface.

## Delete container

	docker stop logic
	docker rm logic

## Quick Preview

![logic](https://cloud.githubusercontent.com/assets/7721625/11663939/2795cdd4-9ddf-11e5-9028-65657386efed.gif)

### Disclaimer
I am not in any way affiliated with Saleae
