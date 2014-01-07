class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :id
    	t.integer :book_id
    	t.integer :user_id
    	t.integer :activity_id
      t.string :review_title
    	t.string :review_content
      t.timestamps
    end
  end
end
