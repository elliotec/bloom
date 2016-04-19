class AddAttachmentPhoto2ToFeaturedArtists < ActiveRecord::Migration
  def self.up
    change_table :featured_artists do |t|
      t.attachment :photo2
    end
  end

  def self.down
    remove_attachment :featured_artists, :photo2
  end
end
