class LikesController < ApplicationController
  before_action :signed_in_user

  def create
    @like = Like.create! user_id: current_user.id, activity_id: params[:like][:activity_id]
  end

  def destroy
    like = Like.find params[:id]
    @activity = like.activity
    like.destroy!
  end

end
