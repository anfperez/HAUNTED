class AddAttachmentImageToHaunts < ActiveRecord::Migration
  def self.up
    change_table :haunts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :haunts, :image
  end
end
