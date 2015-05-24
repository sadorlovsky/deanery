class RenameTimetablesToLessons < ActiveRecord::Migration
  def change
    rename_table :timetables, :lessons
  end
end
