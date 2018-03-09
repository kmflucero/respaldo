class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :url, :string
    add_column :users, :bio, :text
  end
end
