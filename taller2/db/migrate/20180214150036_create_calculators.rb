class CreateCalculators < ActiveRecord::Migration[5.1]
  def change
    create_table :calculators do |t|
      t.integer :numer_one
      t.integer :numer_two
      t.integer :total

      t.timestamps
    end
  end
end
