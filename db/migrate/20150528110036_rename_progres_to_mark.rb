class RenameProgresToMark < ActiveRecord::Migration
  def change
    rename_table :progresses, :marks
  end
end
