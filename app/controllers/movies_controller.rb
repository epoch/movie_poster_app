class MoviesController < ApplicationController
  def index
    @movies = Movie.page(params[:page]).per(5)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to movies_path
  end

  def update
  end

  def edit
  end

  def movie_params
    params.require(:movie).permit(:title, :poster, :poster_cache, :remote_poster_url)
  end

end
