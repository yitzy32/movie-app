Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/an_actor" => "actor#one_actor"
    get "/all_movies" => "movies#movies"
    get "/first_movie" => "movies#first_movie"
  end
end
