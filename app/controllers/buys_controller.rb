class BuysController < ApplicationController
  before_action :signed_in_user

  def index
    @user = User.find params[:user_id]
    @buys = @user.buys.paginate page: params[:page], per_page: 2
  end

  def create
    @buy = Buy.create! book_id: params[:book_id], user_id: current_user.id, buy_status: 0
    @book = Book.find params[:book_id]
    redirect_to @book
  end

  def destroy
    buy = Buy.find params[:id]
    buy.destroy!
    @book = Book.find params[:book_id]
    redirect_to @book
  end



end
