class User < ActiveRecord::Base
  attr_accessible :banner_image, :bio, :email, :name, :user_image, :password,  :password_confirmation, :role
  
  has_secure_password

  before_validation :set_default_role
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :user_image, UserImageUploader
  mount_uploader :banner_image, BannerImageUploader

  has_many :songs, dependent: :destroy

  has_many :comments

  def role?(role)
    self.role.to_s == role.to_s
  end

  private
  def set_default_role
    self.role ||= "user"
  end


end


