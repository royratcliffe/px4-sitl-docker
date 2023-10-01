TAG = royratcliffe/px4-sitl
ARG = -e DISPLAY=:0 -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix

build:
	docker build . -t $(TAG)

build-no-cache:
	docker build . --no-cache -t $(TAG)

bash:
	docker run -it --rm $(ARG) --entrypoint bash $(TAG)

run-%:
	docker run -it --rm $(ARG) $(TAG) -i $*

run-d-%:
	docker run -it --rm $(ARG) $(TAG) -d -i $*
