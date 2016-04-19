class CreateFeaturedArtists < ActiveRecord::Migration
  def self.up
    create_table :featured_artists do |t|
      t.string :name
      t.string :bio
      t.string :link
      
      t.timestamps
    end
  end

  def self.down
    drop_table :featured_artists
  end
end