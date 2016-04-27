class Elixer < ActiveRecord::Base
  has_attached_file :photo, styles: {medium: "800x800<"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  def previous
    Elixer.where(["id < ?", id]).last
  end

  def next
    Elixer.where(["id > ?", id]).first
  end

end
