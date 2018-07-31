class AssessmentResult < ApplicationRecord
  belongs_to :assessment
  has_one :user
end
