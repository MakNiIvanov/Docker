#Создание образа PostgreSQL:
cd /home/astra/docker/DZ/PostgreSQL
docker build -t my_postgres .

#Создание сети:
docker network create --subnet 192.168.1.0/24 my_network

#Запуск Админера:
docker run -d --rm --name adminer --net my_network --ip 192.168.1.10 -p 8080:8080  adminer:4.8.1

#Запуск БД:
docker run -d --rm --name postgres --net my_network --ip 192.168.1.11 -p 5432:5432 -v /home/astra/docker/DZ/PostgreSQL/schema.sql:/docker-entrypoint-initdb.d/schema.sql my_postgres