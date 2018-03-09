class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age,  default: 1
      t.string :country, default: 'Chile'

      t.timestamps
    end
  end
end
