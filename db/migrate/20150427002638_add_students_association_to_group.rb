class AddStudentsAssociationToGroup < ActiveRecord::Migration
  def change
    add_reference :students, :group, index: true
    add_foreign_key :students, :groups 
  end
end
