class AddFirstAndLastNamesToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
  end
end
