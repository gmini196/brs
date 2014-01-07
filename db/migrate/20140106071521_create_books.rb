class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.integer :category_id
      t.string :title
      t.integer :num_page
      t.string :author
      t.datetime :publish_date
      t.integer :price
      t.integer :rating
      t.timestamps
    end
  end
end
