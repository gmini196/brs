class ReadingsController < ApplicationController

	def index 
    @readings = current_user.readings.paginate page: params[:page], 
                                                   per_page: 2
  end

  def create
    Reading.create reading_params
  end

  private 

    def reading_params
      params.require(:reading).permit(:user_id, :book_id)
    end
end