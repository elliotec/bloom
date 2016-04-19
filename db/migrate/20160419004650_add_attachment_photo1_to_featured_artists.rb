class AddAttachmentPhoto1ToFeaturedArtists < ActiveRecord::Migration
  def self.up
    change_table :featured_artists do |t|
      t.attachment :photo1
    end
  end

  def self.down
    remove_attachment :featured_artists, :photo1
  end
end
