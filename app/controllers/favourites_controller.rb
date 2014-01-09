class FavouritesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @favourites = @user.favourites.paginate page: params[:page], per_page: 2
                   
  end

  def create
    activity_favourite = Activity.create! user_id: current_user.id
    Favourite.create! user_id: current_user.id, 
                 book_id: params[:book_id],
                 activity_id: activity_favourite.id
  end
end