build:
	docker compose -f local.yml up --build -d --remove-orphans

up:
	docker compose -f local.yml up -d

down:
	docker compose -f local.yml down

down-v:
	docker compose -f local.yml down -v

banker-config:
	docker compose -f local.yml config

makemigrations:
	docker compose -f local.yml run --rm api python manage.py makemigrations

migrate:
	docker compose -f local.yml run --rm api python manage.py migrate

collectstatic:
	docker compose -f local.yml run --rm api python manage.py collectstatic --noinput --clear

superuser:
	docker compose -f local.yml run --rm api python manage.py createsuperuser

flush:
	docker compose -f local.yml run --rm api python manage.py flush

network-inspect:
	docker network inspect banker_local_nw

banker-db:
	docker compose -f local.yml exec postgres psql --username LJj2jwKlsy7ttA --dbname banker

status:
	docker compose -f local.yml ps

logs:
	docker compose -f local.yml logs -f --tail=200

logs-api:
	docker compose -f local.yml logs -f --tail=200 api

logs-celery:
	docker compose -f local.yml logs -f --tail=200 celeryworker

logs-rabbit:
	docker compose -f local.yml logs -f --tail=200 rabbitmq