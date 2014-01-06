class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.integer :id
    	t.integer :user_id
    	t.integer :activity_id
      t.timestamps
    end
  end
end
