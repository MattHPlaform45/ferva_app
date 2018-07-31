class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :assessment_id
      t.integer :category_id
      t.string :title 


      t.timestamps
    end
  end
end
