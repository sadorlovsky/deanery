class Group < ActiveRecord::Base

  has_many :students
  has_many :timetables
  has_one :class_monitor, -> { where(last_name: "Мурлыка") }, class_name: "Student"

  before_validation :normalize, on: [:create, :update]

  validates_presence_of :code, :name, :branch, :course, :qualification
  validates_numericality_of :code, :course, :qualification

  validates :course, length: { is: 1 }
  validates :code, uniqueness: true

  def normalize
    self.name = self.name.mb_chars.upcase.to_s
    self.branch = self.branch.mb_chars.capitalize.to_s
  end

  def get_qualification
    @qualification = self.qualification == 1 ? "Магистр" : "Бакалавр"
  end

end
