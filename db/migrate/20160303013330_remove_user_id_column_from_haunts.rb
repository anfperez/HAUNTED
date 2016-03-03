class RemoveUserIdColumnFromHaunts < ActiveRecord::Migration
  def change
    remove_column :haunts, :user_id, :integer
  end
end
