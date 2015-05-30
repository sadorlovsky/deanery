class RemoveDescriptionFromDisciplines < ActiveRecord::Migration
  def change
    remove_column :disciplines, :description, :string
  end
end
