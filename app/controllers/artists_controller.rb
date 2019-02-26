class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artists_params_helper(:name, :bio))

    redirect_to artist
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artists_params_helper(:name, :bio))

    redirect_to artist_path(artist.id)
  end

  private

  def artists_params_helper(*args)
    params.require(:artist).permit(*args)
  end

end
