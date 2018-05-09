all: Dockerfile
	docker build -t weechat:latest .

hub:
	docker login
	docker tag weechat:latest kangsterizer/weechat
	docker push kangsterizer/weechat

.PHONY: all hub
