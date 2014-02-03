class User < ActiveRecord::Base
  attr_accessible :banner_image, :bio, :email, :name, :user_image, :password,  :password_confirmation, :role
  
  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :user_image, UserImageUploader
  mount_uploader :banner_image, BannerImageUploader

  has_many :songs
end


