class SongsController < ApplicationController

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
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def destroy
  end

  def index
    @songs = Song.all
    # @artist = Song.find_by(artist_id: @song.id)
  end

  def show
    @song = Song.find(params[:id])
    @artist = Song.find_by(artist_id: @song.id)
  end
end
