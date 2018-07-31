class UserAssessment < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :assessments  

end
