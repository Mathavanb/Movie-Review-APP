class Homepg < ApplicationRecord
  has_many :reviewpgs
  validates :movie_name,presence:true
  validates :release_date,presence:true
  has_one_attached :image
  has_one_attached :video
end
