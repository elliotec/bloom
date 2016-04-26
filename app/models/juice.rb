class Juice < ActiveRecord::Base
  has_attached_file :photo, styles: {medium: "400x400<"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  def previous
    Juice.where(["id < ?", id]).last
  end

  def next
    Juice.where(["id > ?", id]).first
  end
end

