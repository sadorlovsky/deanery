class Student < ActiveRecord::Base
  before_validation :normalize_name, on: :create

  validates_presence_of :first_name, :last_name, :middle_name

  protected
    def normalize_name
      self.first_name = self.first_name.titleize
      self.last_name = self.last_name.titleize
      self.middle_name = self.middle_name.titleize
    end
end
