class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
    	t.integer :id
    	t.integer :user_id
    	t.integer :book_id
    	t.integer :rate
      t.timestamps
    end
  end
end
