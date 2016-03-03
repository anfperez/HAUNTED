class AddPictureToHaunts < ActiveRecord::Migration
  def change
  	add_column :haunts, :image, :string
  end
end
