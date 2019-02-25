class GenresController < ActionController::Base

  def index
    @genre = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(short_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(short_params)
    redirect_to genre_path(@genre)
  end



  def short_params
    params.require(:genre).permit(:name)
  end

end
