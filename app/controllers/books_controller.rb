class BooksController < ApplicationController
  def index
    @books = Book.paginate(page: params[:page], per_page: 8)
  end

  def show

  end


end
