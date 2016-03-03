class RemoveImageFromHaunt < ActiveRecord::Migration
  def change
  	remove_column :haunts, :image, :string
  end
end
