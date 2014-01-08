class FavouritesController < ApplicationController

  def create
    activity_favourite = Activity.create! user_id: current_user.id
    Favourite.create! user_id: params[:favourite][:user_id], 
                 book_id: params[:favourite][:book_id],
                 activity_id: activity_favourite.id
  end
end