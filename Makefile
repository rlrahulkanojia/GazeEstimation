.ONESHELL:

docker-ls:
	@echo "Disk Usage:"
	@df -h
	@echo ""
	@echo "Docker Images:"
	@docker images -a
	@echo ""
	@echo "Docker Containers:"
	@docker ps -a -s
	@echo ""

docker-build:
	docker build --progress=plain -t gaze:latest -f Dockerfile .
	@make docker-ls

docker-enter:
	docker run --privileged \
		-it \
		--net=host \
		-v /dev:/dev \
		gaze:latest

