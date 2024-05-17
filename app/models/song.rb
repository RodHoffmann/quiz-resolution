class Song < ApplicationRecord
  has_many :reviews, dependent: :destroy
  #@song.reviews
  validates :title, presence: true
end
