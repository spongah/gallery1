class AddUserReferenceToGallery < ActiveRecord::Migration
  def change
    add_reference :galleries, :user, index: true, foreign_key: true
  end
end
