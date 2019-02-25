class ArtistsController < ActionController::Base


  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(short_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(short_params)
    redirect_to artist_path(@artist)
  end

  def short_params
    params.require(:artist).permit(:name, :bio)
  end

end
