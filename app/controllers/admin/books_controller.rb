class Admin::BooksController < ApplicationController
	include BooksHelper
  before_action :signed_in_admin

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

	def edit
		@book = Book.find params[:id]
		@categories = Category.all
	end

	def update
		@book = Book.find params[:id] 
    if @book.update_attributes! book_params
      flash[:success] = "Book updated"
      redirect_to admin_books_path
    else
      render 'edit'
    end
	end

	def destroy
		@book = Book.find params[:id]
		unless !@book.nil? && book_using?(@book)
		  @book.destroy
      flash[:success] = "Book deleted."
      redirect_to admin_books_path
    else
    	flash[:error] = "Book using. You can't remove."
      redirect_to admin_books_path
    end
	end

	private

	    def book_params
	      params.require(:book).permit(:title, :category_id, :price, 
	      														 :num_page, :author, :publish_date)
	    end
end