build:
	docker build --no-cache -t webscreen .

build-cache:
	docker build -t webscreen .

run:
	docker run --rm webscreen