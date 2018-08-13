class AssCategoryIdToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :category_id, :integer
  end
end
