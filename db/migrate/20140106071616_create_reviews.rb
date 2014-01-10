class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :book_id
    	t.integer :user_id
    	t.integer :activity_id
      t.string :review_title
    	t.string :content_review
      t.timestamps
    end
    add_index :reviews, [:user_id, :created_at]
  end
end
