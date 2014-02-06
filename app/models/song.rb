class Song < ActiveRecord::Base
  attr_accessible :genre, :name, :user_id, :file
  mount_uploader :file, SongFileUploader

  belongs_to :user
  has_many :comments

  validates :name, presence: true
  validates :name, :length => { :maximum => 50 }

  validates :file, presence: true
end


