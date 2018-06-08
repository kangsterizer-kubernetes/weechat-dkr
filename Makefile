CACHE      :=  --no-cache
VOLUME     :=  weechat
RELAY_PORT := 9001

all: Dockerfile
	docker build $(CACHE) -t weechat:latest .

hub:
	docker login
	docker tag weechat:latest kangsterizer/weechat
	docker push kangsterizer/weechat

install:
	docker volume create $(VOLUME)

# net=host is require to listen on the host ports without additional setup
# note that the volume is the one created above
start:
	docker run --net=host -p $(RELAY_PORT):$(RELAY_PORT) --mount source=$(VOLUME),target=/home/arch/.weechat -ti weechat

.PHONY: all hub
