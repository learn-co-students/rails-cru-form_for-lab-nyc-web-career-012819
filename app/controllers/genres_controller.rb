class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genres_params_helper(:name))

    redirect_to genre_path(genre.id)
  end

  def edit
    @genre = Genre.find(params[:id])

  end

  def update
    genre = Genre.find(params[:id])
    genre.update(genres_params_helper(:name))
    
    redirect_to genre_path(genre.id)
  end

  private

  def genres_params_helper(*args)
    params.require(:genre).permit(*args)
  end

end
