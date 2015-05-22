class User < ActiveRecord::Base
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :photo,
    styles: { mini: "50x50", thumb: "100x100#", small: "150x150>", medium: "300x200" },
    convert_options: { mini: "-quality 75 -strip" },
    default_url: "missing_:style.jpg"

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  before_validation :normalize, on: [:create, :update]

  def normalize
    self.first_name = self.first_name.mb_chars.titleize.to_s
    self.last_name = self.last_name.mb_chars.titleize.to_s
  end

  def full_name
    @full_name = [last_name, first_name] * ' '
  end
end
