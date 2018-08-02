class Adduserassidtoresult < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments_results, :user_assessment_id, :integer
  end
end
