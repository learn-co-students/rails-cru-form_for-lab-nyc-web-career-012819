class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    find_genre
  end

  def edit
    find_genre
  end

  def update
    find_genre
    @genre.update(post_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def post_params(*args)
    params.require(:genre).permit(*args)
  end

end
