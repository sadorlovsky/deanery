class RenameTypeToLessons < ActiveRecord::Migration
  def change
    rename_column :lessons, :type, :lesson_type
  end
end
