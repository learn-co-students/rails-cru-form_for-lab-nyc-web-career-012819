class GenresController < ApplicationController

  def index
    #code
    @genres = Genre.all
  end

  def new
    #code
    @genre = Genre.new
  end

  def show
    #code
    @genre = Genre.find(params[:id])
  end

  def create
    #code
    # byebug
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def edit
    #code
    @genre = Genre.find(params[:id])
  end

  def update
    #code
    # byebug
    @genre = Genre.update(params[:id], name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

end
