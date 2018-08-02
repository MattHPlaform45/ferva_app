class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :assessments_result
end
