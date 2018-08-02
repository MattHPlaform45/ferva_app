class AssessmentsResult < ApplicationRecord
  belongs_to :user_assessment
  belongs_to :user
  has_many :answers
  accepts_nested_attributes_for :answers
end
