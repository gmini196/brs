class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @activities  = Activity.list_activities(current_user.id).paginate page: params[:page], per_page: 4
    end
  end

  def help
  end
end
