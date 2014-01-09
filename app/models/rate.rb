class Rate < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  scope :rate_number, lambda { |book_id| {conditions: "book_id = #{book_id}"} }

end
