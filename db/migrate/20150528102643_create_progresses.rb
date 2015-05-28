class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.references :student
      t.references :discipline
      t.integer :m1
      t.integer :m2
      t.integer :test
      t.integer :exam
      t.timestamps null: false
    end
  end
end
