class AddFieldsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :gender, :string
    add_column :students, :birth_date, :date
    add_column :students, :phone, :string
    add_column :students, :email, :string
    add_column :students, :address, :string
    add_column :students, :class_monitor, :boolean
    add_column :students, :rating, :float
    add_column :students, :code, :integer
  end
end
