build:
	docker build --no-cache -t webscreen .

build-cache:
	docker build -t webscreen .

run:
	docker run --rm -p 8001:8001 webscreen &