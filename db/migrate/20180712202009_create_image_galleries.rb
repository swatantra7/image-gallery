class CreateImageGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :image_galleries do |t|

      t.timestamps
    end
    add_attachment :image_galleries, :image_list
  end
end
