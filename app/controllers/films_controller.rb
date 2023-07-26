class FilmsController < ApplicationController
  def new
    @film = Film.new
  end

  def create
    film = Film.new(film_params)
    film.save
    redirect_to film_path(film.id)
  end

  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    film = Film.find(params[:id])
    film.update(film_params)
    redirect_to film_path(film.id)
  end

  private

  def film_params
    params.require(:film).permit(:title, :impressions, :image)
  end

end
