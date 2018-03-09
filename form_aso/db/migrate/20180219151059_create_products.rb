class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.integer :stock
      t.float :price

      t.timestamps
    end
  end
end
