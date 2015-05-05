class RenameGroupColumn < ActiveRecord::Migration
  def change
    rename_column :groups, :qualification_cd, :qualification
  end
end
