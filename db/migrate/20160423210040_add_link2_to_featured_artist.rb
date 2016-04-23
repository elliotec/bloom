class AddLink2ToFeaturedArtist < ActiveRecord::Migration
  def change
    add_column :featured_artists, :link2, :string
  end
end
