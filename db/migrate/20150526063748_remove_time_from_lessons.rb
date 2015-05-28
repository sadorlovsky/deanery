class RemoveTimeFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :time_start, :time
    remove_column :lessons, :time_end, :time
  end
end
