class FeaturedArtist < ActiveRecord::Base
  has_attached_file :photo, styles: {large: "800x800>"}
  has_attached_file :photo2, styles: {large: "800x800>"}
  #validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  #validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/
end