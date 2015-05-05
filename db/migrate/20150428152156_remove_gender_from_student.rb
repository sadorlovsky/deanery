class RemoveGenderFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :gender, :string
  end
end
