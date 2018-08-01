class AddUsersToAssessments < ActiveRecord::Migration[5.2]
  def change
    t.integer :user_id
    t.reference foreign_key: true
     
  end
end
