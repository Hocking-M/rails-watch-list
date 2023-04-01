class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.all
  end

  def show; end

  def edit; end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: 'Movie was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path, notice: 'Movie was successfully destroyed.'
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
