class Addassidtoanswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :user_assessment_id, :integer
  end
end
