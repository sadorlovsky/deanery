class AddAttachmentPhotoToTeachers < ActiveRecord::Migration
  def self.up
    change_table :teachers do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :teachers, :photo
  end
end
