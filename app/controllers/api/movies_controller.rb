class Api::MoviesController < ApplicationController
  def movies
    @movies = Movie.all
    render "index.json.jb"
  end
end
