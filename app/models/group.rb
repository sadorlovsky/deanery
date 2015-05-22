class Group < ActiveRecord::Base
  extend Enumerize

  enumerize :qualification, in: [:bachelor, :master]

  has_many :students
  has_many :timetables
  has_one :class_monitor, -> { where(last_name: "Мурлыка") }, class_name: "Student"

  before_validation :normalize, on: [:create, :update]

  validates_presence_of :code, :name, :branch, :qualification
  validates_numericality_of :code

  validates :code, uniqueness: true

  def normalize
    self.name = self.name.mb_chars.upcase.to_s
    self.branch = self.branch.mb_chars.capitalize.to_s
  end

  def course
    enroll = Date.strptime("01.07.#{self.name.split('-')[1]}", "%d.%m.%y")
    now = Date.current
    @course = now.year - enroll.year + ((now.month > enroll.month || (now.month == enroll.month && now.day >= enroll.day)) ? 1 : 0)
  end

end
