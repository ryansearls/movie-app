Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # require "http"

  # response = HTTp.get("http://localhost:3000/all_movies")

  # p responde.parse(:json)


 get "/first_actor", controller: "actors", action: "first_actor"

 get "/first_movie", controller: "movies", action: "first_movie"

 get "/second_movie", controller: "movies", action: "second_movie"

 get "/all_movies", controller: "movies", action: "all_movies"




end
