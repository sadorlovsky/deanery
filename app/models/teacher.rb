class Teacher < ActiveRecord::Base

  has_many :lessons

  before_validation :normalize, on: [:create, :update]
  validates_presence_of :first_name, :last_name, :middle_name

  has_attached_file :photo, 
          styles: { thumb: "100x100#", small: "150x150>", medium: "200x200" },
          convert_options: { thumb: "-quality 75 -strip" },
          default_url: "missing_:style.jpg"

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def normalize
    self.first_name = self.first_name.mb_chars.titleize.to_s
    self.last_name = self.last_name.mb_chars.titleize.to_s
    self.middle_name = self.middle_name.mb_chars.titleize.to_s
  end

  def full_name
    @full_name = [last_name, first_name, middle_name] * ' '
  end

  def get_gender
    @gender = self.gender == 1 ? "Мужской" : "Женский"
  end
end
