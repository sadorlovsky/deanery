class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :code
      t.string :name
      t.string :branch
      t.string :qualification
      t.integer :course

      t.timestamps null: false
    end
  end
end
