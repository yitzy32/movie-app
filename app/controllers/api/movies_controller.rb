class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.all.where(english: true)
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english] || true,
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || true
    @movie.save
    render "show.json.jb"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: { message: "movie removed from system" }
  end
end
