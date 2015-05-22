class ChangeGenderFieldInStudents < ActiveRecord::Migration
  def change
    remove_column :students, :gender, :integer
    add_column :students, :sex, :string
  end
end
