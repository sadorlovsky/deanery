class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.belongs_to :group, index: true
      t.belongs_to :discipline
      t.belongs_to :teacher
      t.date :date_start
      t.date :date_end
      t.time :time_start
      t.time :time_end
      t.string :classroom

      t.timestamps null: false
    end
  end
end
