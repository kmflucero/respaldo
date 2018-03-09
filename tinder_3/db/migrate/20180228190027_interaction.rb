class Interaction < ActiveRecord::Migration[5.1]
 def change
    create_table :interactions do |t|
      t.integer :user_one_id, index: true, foreign_key: true
      t.integer :user_two_id, index:true, foreign_key: true
      t.boolean :like 
      t.timestamps null: false
    end
    add_foreign_key :interactions, :users, column: :user_one_id 
    add_foreign_key :interactions, :users, column: :user_two_id
  end
end
