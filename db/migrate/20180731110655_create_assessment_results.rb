class CreateAssessmentResults < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments_results do |t|
      t.integer :user_id
      t.integer :result 


      t.timestamps
    end
  end
end
