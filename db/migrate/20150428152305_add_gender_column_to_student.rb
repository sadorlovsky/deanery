class AddGenderColumnToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :gender_cd, :integer
  end

  def self.down
    remove_column :students, :gender_cd
  end
end
