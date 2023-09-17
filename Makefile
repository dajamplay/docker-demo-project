init: docker-down-clear docker-pull docker-build docker-up
# можно запускать в начале каждого дня

up: docker-up
down: docker-down
restart: down up

docker-up:
	docker-compose up -d

# --remove-orphans остановка допустим переименованных контейнеров
# так как docker-compose down смотрит на названия в файле docker-compose.yml
docker-down:
	docker-compose down --remove-orphans

# -v остановка с очисткой volumes
docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

# --pull обновление образов для Dockerfile
docker-build:
	docker-compose build --pull

### Frontend ###
create-react-app:
	docker-compose run --rm frontend-node-cli npx create-react-app react-app
