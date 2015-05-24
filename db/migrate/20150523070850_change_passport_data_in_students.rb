class ChangePassportDataInStudents < ActiveRecord::Migration
  def change
    remove_column :students, :passport_ser, :string
    rename_column :students, :passport_issue_where, :passport_where
    rename_column :students, :passport_issue_when, :passport_when
  end
end
