class SongsController < ApplicationController

  def index
    #code
    @songs = Song.all
  end

  def new
    #code
    @song = Song.new
  end

  def show
    #code
    @song = Song.find(params[:id])
    @genre = @song.genre_id
    @artist = @song.artist_id
    # byebug
  end

  def create
    #code
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end

  def edit
    #code
    @song = Song.new
  end

  def update
    #code
    @song = Song.update(post_params[:name])
    redirect_to song_path(@song)
  end

  def post_params(*args)
    params.require(:song).permit(*args)
  end

end
