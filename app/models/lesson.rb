class Lesson < ActiveRecord::Base
  extend Enumerize
  enumerize :weekday, in: %w(monday tuesday wednesday thursday friday saturday), scope: :weekday
  enumerize :pair, in: %w(first second third fourth fifth), scope: :pair
  enumerize :lesson_type, in: [:lecture, :seminar, :lab], scope: :type

  belongs_to :group
  belongs_to :discipline
  belongs_to :teacher
end
