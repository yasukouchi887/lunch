class Micropost < ApplicationRecord
  belongs_to :user
  
  mount_uploader :img, ImgUploader
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, length: { maximum: 50 }

end
