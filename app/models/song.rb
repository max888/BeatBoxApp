class Song < ActiveRecord::Base
  attr_accessible :genre, :name, :user_id, :file
  mount_uploader :file, SongFileUploader

  belongs_to :user
end


