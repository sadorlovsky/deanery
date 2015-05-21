class RemoveCourseFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :course, :integer
  end
end
