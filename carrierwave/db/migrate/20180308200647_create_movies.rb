class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :photo
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
