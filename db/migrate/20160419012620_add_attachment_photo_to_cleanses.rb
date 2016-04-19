class AddAttachmentPhotoToCleanses < ActiveRecord::Migration
  def self.up
    change_table :cleanses do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :cleanses, :photo
  end
end
