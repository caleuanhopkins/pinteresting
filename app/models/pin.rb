class Pin < ActiveRecord::Base
	belongs_to :user

	#attr_accessible()
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => 'placeholder-img_:style.jpg'
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
