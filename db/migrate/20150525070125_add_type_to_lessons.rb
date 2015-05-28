class AddTypeToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :type, :string
  end
end
