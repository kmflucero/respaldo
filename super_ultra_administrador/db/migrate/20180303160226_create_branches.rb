class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :type

      t.timestamps
    end
  end
end
