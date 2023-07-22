class FilmsController < ApplicationController
  def new
    @film = Film.new
  end

  def create
    film = Film.new(film_params)
    film.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def film_params
    params.require(:film).permit(:title, :impressions)
  end

end
