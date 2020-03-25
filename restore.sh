cd ~/nginx-proxy-docker && docker-compose -f docker-compose-letsencrypt.yml down
cd ~/nginx-proxy-docker && docker-compose -f docker-compose-letsencrypt.yml up -d

docker network create [docker-project-here]-network # Repeat this line for every project hosted on the server.

docker network connect [docker-project-here]-network nginx-proxy # Repeat this line for every project hosted on the server.

cd ~/[docker-project-here]/docker && docker-compose down # Repeat this line for every project hosted on the server.
cd ~/[docker-project-here]/docker && docker-compose up -d # Repeat this line for every project hosted on the server.