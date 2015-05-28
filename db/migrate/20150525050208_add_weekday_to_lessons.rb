class AddWeekdayToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :weekday, :string
  end
end
