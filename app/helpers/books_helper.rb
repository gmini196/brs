module BooksHelper

	def book_using? book
		book.buys.any? || book.favourites.any? ||
		book.reads.any? || book.readings.any? ||
		book.rates.any? || book.reviews.any?
	end

end