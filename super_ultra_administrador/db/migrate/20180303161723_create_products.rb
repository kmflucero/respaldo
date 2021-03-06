class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.references :category, foreign_key: true
      t.string :code
      t.integer :stock
      t.references :branch, foreign_key: true
      t.timestamps
    end
  end
end
