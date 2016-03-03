class Haunt < ActiveRecord::Base

	geocoded_by :address
	after_validation :geocode
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb:"150x150#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
  		where("description LIKE ?", "%#{search}%")
	end
end
