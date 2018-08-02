class Edituserassesments < ActiveRecord::Migration[5.2]
  def change
    drop_table :assessments_users

  end
end
