class Group < ActiveRecord::Base

  has_many :students
  accepts_nested_attributes_for :students

  def get_qualification
    @qualification = self.qualification == 1 ? "Магистр" : "Бакалавр"
  end

end
