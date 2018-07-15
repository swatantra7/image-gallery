class ImageGallery < ApplicationRecord

  has_attached_file :image_list,
          styles: { medium: "300x300>", thumb: "100x100>" },
          :url  => "/assets/images/:id/:style/:basename.:extension",
          :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

  validates_attachment_content_type :image_list, :content_type => ['image/jpeg', 'image/png']

end
