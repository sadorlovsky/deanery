class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :middle_name, null: false

      t.timestamps null: false
    end
  end
end
