class AddPairToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :pair, :string
  end
end
