class Api::MoviesController < ApplicationController
  def movies
    @movies = Movie.all
    render "index.json.jb"
  end

  def first_movie
    @first_movie = Movie.first
    render "first_movie.json.jb"
  end
end
