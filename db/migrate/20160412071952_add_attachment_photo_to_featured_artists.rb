class AddAttachmentPhotoToFeaturedArtists < ActiveRecord::Migration
  def self.up
    change_table :featured_artists do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :featured_artists, :photo
  end
end
