image_chatbot_howie := ypid/howie

.PHONY: start stop run build howie howie-bash

start:
	docker start howie

stop:
	docker stop howie

run: howie

build:
	docker build --no-cache --tag $(image_chatbot_howie) .
	# docker build --tag $(image_chatbot_howie) .

howie:
	-@docker rm -f "$@"
	docker run -d \
		--name "$@" \
		-e "TZ=Europe/Berlin" \
		-v /etc/howie/howie.ini:/src/howie/howie.ini \
		$(image_chatbot_howie)

howie-bash:
	docker run --rm -ti \
		-e "TZ=Europe/Berlin" \
		-v /etc/howie/howie.ini:/src/howie/howie.ini \
		$(image_chatbot_howie) bash
