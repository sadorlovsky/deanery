class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :students, :gender_cd, :gender
  end
end
