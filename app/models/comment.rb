class Comment < ActiveRecord::Base
  attr_accessible :comment, :song_id, :user_id

  belongs_to :user
  belongs_to :song
end
