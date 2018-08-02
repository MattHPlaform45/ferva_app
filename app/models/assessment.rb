class Assessment < ApplicationRecord
  has_many :questions
  has_and_belongs_to_many :users
  has_many :assessments_users
end
