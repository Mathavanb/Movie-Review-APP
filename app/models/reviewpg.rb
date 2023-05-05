class Reviewpg < ApplicationRecord
  after_save :update_rating
  belongs_to :homepg,counter_cache: true
  belongs_to :user


  validates :review, presence: true

  def update_rating
    homepg.update(rating_average:homepg.reviewpgs.average(:rating).round(1))
  end
end
