class CreateUserAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_assessments do |t|
      t.integer :user_id
      t.integer :assessment_id


      t.timestamps
    end
  end
end
