class SearchsController < ApplicationController
  def index
    @book = Book.new
  end

  def new
    @books = Book.search_book_by_title_cat(params[:title],
     params[:category_id]).paginate page: params[:page], per_page: 8
  end

end
