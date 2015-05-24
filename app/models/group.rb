class Group < ActiveRecord::Base
  extend Enumerize

  enumerize :qualification, in: [:bachelor, :master]

  has_many :students
  has_many :lessons
  has_many :disciplines, through: :lessons

  normalize :name do |value|
    value = value.squish
    value.mb_chars.upcase.to_s
  end

  normalize :branch do |value|
    value = value.squish
    value.mb_chars.capitalize.to_s
  end

  validates :code,          presence: true, uniqueness: true, length: { maximum: 10 }
  validates :name,          presence: true, uniqueness: true, length: { maximum: 10 }
  validates :branch,        presence: true
  validates :qualification, presence: true, inclusion: { in: Group.qualification.values }

  def course
    enroll = Date.strptime("01.07.#{self.name.split('-')[1]}", "%d.%m.%y")
    now = Date.current
    now.year - enroll.year + ((now.month > enroll.month || (now.month == enroll.month && now.day >= enroll.day)) ? 1 : 0)
  end

end
