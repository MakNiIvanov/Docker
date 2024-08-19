docker kill adminer
docker kill postgres
docker rmi my_postgres
docker rmi adminer:4.8.1
docker rmi postgres:16.4-bookworm 
docker network rm my_network
