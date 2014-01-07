class Admin::BooksController < ApplicationController
	def index
			@books = Book.paginate page: params[:page], per_page: 2
	end

	def show

	end

	def new
		@book = Book.new
		@categories = Category.all
	end

	def create
		@book= Book.new book_params
	    if @book.save
	      flash[:success] = "Create new book success!"
	      redirect_to admin_books_path
	    else
	      render 'new'
	    end
	end


	private

	    def book_params
	      params.require(:book).permit(:title, :id_cate, :author,
	                                   :publish_date)
	    end
end