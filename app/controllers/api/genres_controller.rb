class Api::GenresController < ApplicationController
  def index
    @genres = Genre.includes(series: [:episodes, :reviews])
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
