docker:
	docker build -t streaming .
	docker run -p 8000:8000 streaming

run:
	python3 manage.py runserver

PHONY: docker