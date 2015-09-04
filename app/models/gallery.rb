class Gallery < ActiveRecord::Base
	has_many :images, dependent: :destroy
	belongs_to :user
	mount_uploader :galleryimage, ImageUploader
end
