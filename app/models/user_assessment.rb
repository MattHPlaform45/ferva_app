class UserAssessment < ApplicationRecord
  belongs_to :user
  belongs_to :assessment
  has_one :assessments_result

  def average_for_category(category)
    (Answer.where('user_assessment_id = ? AND category_id = ?', self.id, category.id).sum(:result) / Answer.where('user_assessment_id = ? AND category_id = ?', self.id, category.id).count).to_f rescue 0
  end



end
