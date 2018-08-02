class Addresultidtoanswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :assessments_result_id, :integer
  end
end
