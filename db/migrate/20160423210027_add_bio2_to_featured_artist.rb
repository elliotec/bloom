class AddBio2ToFeaturedArtist < ActiveRecord::Migration
  def change
    add_column :featured_artists, :bio2, :string
  end
end
