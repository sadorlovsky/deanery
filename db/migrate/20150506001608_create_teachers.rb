class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :birth_date
      t.integer :gender
      t.string :cathedra

      t.timestamps null: false
    end
  end
end
