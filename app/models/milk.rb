class Milk < ActiveRecord::Base
 has_attached_file :photo, styles: {medium: "400x400<"}
 validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  def previous
    Milk.where(["id < ?", id]).last
  end

  def next
    Milk.where(["id > ?", id]).first
  end

end
