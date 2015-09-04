class Gallery < ActiveRecord::Base
	has_many :images, dependent: :destroy
	mount_uploader :galleryimage, ImageUploader
end
