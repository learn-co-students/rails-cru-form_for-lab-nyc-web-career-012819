class ArtistsController < ApplicationController

  def index
    #code
    @artists = Artist.all
  end

  def new
    #code
    @artist = Artist.new
  end

  def show
    #code
    @artist = Artist.find(params[:id])
  end

  def create
    #code
    # byebug
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  def edit
    #code
    @artist = Artist.find(params[:id])
  end

  def update
    #code
    @artist = Artist.update(params[:id], name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

end
