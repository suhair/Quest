class Lesson < ActiveRecord::Base
  belongs_to :course
  has_many :topics
end
