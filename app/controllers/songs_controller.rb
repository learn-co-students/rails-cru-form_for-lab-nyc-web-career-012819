class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    # byebug
    @genre_id = @song.genre_id
    @genre = Genre.find(@genre_id)
    @artist_id = @song.artist_id
    @artist = Artist.find(@artist_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.artist_id = params[:song][:artist_id]
    @song.genre_id = params[:song][:genre_id]
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end
end
