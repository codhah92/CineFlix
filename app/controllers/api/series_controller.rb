class Api::SeriesController < ApplicationController
  def show
    @serie = Serie.find(params[:id])
  end

  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      render :index
    else
      render json: @serie.errors.full_messages, status: 422
    end
  end

  def search
    @series = Serie.where("LOWER(title) ~ ?", params[:query].downcase)
    render :search
  end

  private

  def serie_params
    params.require(:serie).permit(:title, :description, :year)
  end
end
