class Cleanse < ActiveRecord::Base
  has_attached_file :photo, styles: {medium: "800x800<"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  def previous
    Cleanse.where(["id < ?", id]).last
  end

  def next
    Cleanse.where(["id > ?", id]).first
  end

end

