setup:
	cp .env.example .env
	docker network create web

run-production:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

run-local:
	docker-compose up -d

stop:
	docker-compose stop

teardown: stop
	docker-compose rm --force