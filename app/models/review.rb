class Review < ApplicationRecord
  belongs_to :song
  #@review.song = 

  validates :content, presence: true
end
