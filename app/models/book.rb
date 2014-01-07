class Book < ActiveRecord::Base
	belongs_to :category
	has_many :reviews
	has_many :buys
	has_many :favourites
	has_many :reads
	has_many :readings
	has_many :rates

  scope :search_book_by_title_cat, lambda { |title, category_id| {conditions: "title LIKE \"%#{title}%\" AND category_id = #{category_id}"} }



end
