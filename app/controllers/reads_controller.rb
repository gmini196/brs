class ReadsController < ApplicationController

  def create
    activity_read = Activity.create! user_id: current_user.id
    Read.create! user_id: params[:read][:user_id], 
                 book_id: params[:read][:book_id],
                 activity_id: activity_read.id
  end
end