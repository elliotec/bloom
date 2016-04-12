class CreateFeaturedArtists < ActiveRecord::Migration
  def self.up
    create_table :featured_artists do |t|
      t.string :name1
      t.string :name2
      t.string :bio1
      t.string :bio2
      
      t.timestamps
    end
  end

  def self.down
    drop_table :featured_artists
  end
end