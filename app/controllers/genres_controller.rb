class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to genre_path(@genre.id)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

  def destroy
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
