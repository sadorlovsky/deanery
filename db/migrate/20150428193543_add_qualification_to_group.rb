class AddQualificationToGroup < ActiveRecord::Migration
  def self.up
    add_column :groups, :qualification_cd, :integer
  end

  def self.down
    remove_column :groups, :qualification_cd
  end
end
