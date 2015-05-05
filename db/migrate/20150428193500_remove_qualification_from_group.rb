class RemoveQualificationFromGroup < ActiveRecord::Migration
  def change
    remove_column :groups, :qualification, :string
  end
end
