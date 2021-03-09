# Chifoumi (Rock - Paper - Scissors game) API

* Ruby version : 2.7.1
* Rails version : 6.0.3.5
* Posgrsql version : 12

* System dependencies :
**  Rspec_rails >= 3.9.0

* Database creation : 
**  rails db:create

* Database initialization : 
**  rails db:migrate

* game engine test suite :
**  bundle exec rspec
**  rspec spec/lib/GameEngine_spec.rb
**  rspec spec/controllers/chifoumi_controller_spec.rb

* running the back-end :
**  rails s

* Send data player :
**  curl -H "Accept: application/json" -H "Content-type: application/json" -d '{"name":"Ponky","move":"rock"}'  http://localhost:3000/api/v1/chifoumis







