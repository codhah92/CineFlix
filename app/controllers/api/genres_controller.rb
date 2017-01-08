class Api::GenresController < ApplicationController
  def index
    @all_ratings = Serie.all_ratings
    @genres = Genre.includes(series: [:episodes, :genres, :reviews])
  end

  def show
    @genre = Genre.includes(series: [:episodes, :reviews]).find(params[:id])
  end
end
