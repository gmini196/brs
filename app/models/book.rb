class Book < ActiveRecord::Base
	belongs_to :category
	has_many :reviews
	has_many :buys
	has_many :favourites
	has_many :reads
	has_many :readings
	has_many :rates
end
