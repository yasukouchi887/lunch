class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, :dependent => :destroy
  has_many :users, through: :favorites
  has_many :microposts
  mount_uploader :img, ImgUploader
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, length: { maximum: 50 }

end
