class Rate < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  scope :current_user_rate, lambda { |user_id, book_id| {conditions: "user_id = #{user_id} AND book_id = #{book_id}"} }
  scope :rate_number, lambda { |book_id| {conditions: "book_id = #{book_id}"} }

end
