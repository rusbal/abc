git pull
docker-compose stop web
docker-compose up -d
docker exec -it abc_web_1 gem install bundler -v '~> 2.2'
docker exec -it abc_web_1 bin/bundle install
docker exec -it abc_web_1 bin/rails db:migrate
