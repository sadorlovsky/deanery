class Lesson < ActiveRecord::Base
  belongs_to :group
  belongs_to :discipline
  belongs_to :teacher
end
