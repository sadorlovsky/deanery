class AddPassportToStudent < ActiveRecord::Migration
  def change
    add_column :students, :passport_ser, :string
    add_column :students, :passport_num, :string
    add_column :students, :passport_issue_where, :string
    add_column :students, :passport_issue_when, :date
  end
end
