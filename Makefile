all: Dockerfile
	docker build -t weechat:latest .

.PHONY: all
