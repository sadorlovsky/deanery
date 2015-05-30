class Discipline < ActiveRecord::Base
  has_many :lessons, dependent: :destroy
  has_many :marks, dependent: :destroy
end
