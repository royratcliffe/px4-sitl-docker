TAG = royratcliffe/px4sitl

build:
	docker build . -t $(TAG)

build-no-cache:
	docker build . --no-cache -t $(TAG)

bash:
	docker run -it --rm -e DISPLAY=:0 -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix --entrypoint bash $(TAG)

run-%:
	docker run -it --rm -e DISPLAY=:0 -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix $(TAG) -i $*

run-d-%:
	docker run -it --rm -e DISPLAY=:0 -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix $(TAG) -d -i $*
