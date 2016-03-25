class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
   	t.string :title 
   	t.string :content
   	t.integer :user_id
    t.timestamps null: false
   end
    add_index :events, :user_id
  end
end
