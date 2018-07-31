class CreateJoinTableAssessmentsUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assessments, :users do |t|
      t.index [:assessment_id, :user_id]
      t.index [:user_id, :assessment_id]
    end
  end
end
