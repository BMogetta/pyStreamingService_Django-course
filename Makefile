docker:
	docker build -t streaming .
	docker run -p 8000:8000 streaming

PHONY: docker