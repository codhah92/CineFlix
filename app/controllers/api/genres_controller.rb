class Api::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def search
    @genres = Genre.where("LOWER(name) ~ ?", params[:query].downcase)
    render :search
  end
end
