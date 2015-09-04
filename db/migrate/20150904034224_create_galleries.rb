class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :description
      t.string :galleryimage

      t.timestamps null: false
    end
  end
end
