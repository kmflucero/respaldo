class CreateWork < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name
      t.string :photo
      t.boolean :completed
      t.timestamps
    end
  end
end
