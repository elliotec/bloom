class AddAttachmentPhotoToJuices < ActiveRecord::Migration
  def self.up
    change_table :juices do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :juices, :photo
  end
end
