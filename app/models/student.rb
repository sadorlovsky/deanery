class Student < ActiveRecord::Base
  extend Enumerize

  enumerize :sex, in: [:male, :female]

  belongs_to :group
  has_many :marks

  normalize :first_name, :last_name, :middle_name do |value|
    value = value.squish
    value.mb_chars.titleize.to_s
  end

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :middle_name, presence: true

  validates :passport_num, presence: true
  validates :passport_where, presence: true
  validates :passport_when, presence: true, date: true
  validates :birth_date, presence: true, date: true

  validates :address, presence: true
  validates :phone, presence: true

  validates :code, presence: true, uniqueness: true, length: { is: 6 }

  validates :sex, presence: true, inclusion: { in: Student.sex.values }

  has_attached_file :photo, styles: { mini: "50x50#", thumb: "100x100#", small: "150x150>", medium: "300x200" },
    default_url: "missing_photo/:style/default.png"

  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/png"] }


  def full_name
    full_name = [last_name, first_name, middle_name] * ' '
  end

  def age
    now = Date.current
    now.year - birth_date.year - ((now.month > birth_date.month || (now.month == birth_date.month && now.day >= birth_date.day)) ? 0 : 1)
  end

end
