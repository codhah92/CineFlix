class Api::FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user_id = current_user.id
    if @favorite.save
      render json: @favorite
    else
      render json: @favorite.errors.full_messages, status: 422
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(serie_id: params[:id])
    @favorite.destroy
    render json: @favorite
  end

  private
  def favorite_params
    params.require(:favorite).permit(:serie_id)
  end
end
