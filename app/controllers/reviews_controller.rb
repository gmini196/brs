class ReviewsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]

  def create
    @review = Review.new review_params
    @review.user_id = current_user.id
    @review.book_id = params[:book_id]
    if @review.save!
      flash[:success] = "Review created!"
    end
    redirect_to book_path params[:book_id]
  end
  
  def new
    @book = Book.find params[:book_id]
  end
  
  def show
    @review = Review.find params[:id]
  end

  def destroy
  end
  
  private

    def review_params
      params.require(:review).permit(:content_review, :review_title)
    end
end

