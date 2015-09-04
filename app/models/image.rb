class Image < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :filename, ImageUploader
end
