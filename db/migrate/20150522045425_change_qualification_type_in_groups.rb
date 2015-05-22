class ChangeQualificationTypeInGroups < ActiveRecord::Migration
  def change
    change_column :groups, :qualification, :string
  end
end
