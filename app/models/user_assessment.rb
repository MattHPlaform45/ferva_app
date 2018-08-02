class UserAssessment < ApplicationRecord
  belongs_to :user
  belongs_to :assessment
  has_one :assessments_result
end
