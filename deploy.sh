git pull
docker-compose stop web
docker-compose up -d
docker exec -it abc_web_1 bin/bundle install
docker exec -it abc_web_1 bin/bundle db:create
docker exec -it abc_web_1 bin/rails db:migrate
