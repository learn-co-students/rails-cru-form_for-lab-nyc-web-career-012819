class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(songs_params_helper(:name, :genre_id, :artist_id))

    redirect_to song_path(song.id)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(songs_params_helper(:name, :genre_id, :artist_id))

    redirect_to song_path(song.id)
  end

  private

  def songs_params_helper(*args)
    params.require(:song).permit(*args)
  end

end
