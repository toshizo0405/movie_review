class Film < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :impressions, presence: true
  validates :image, presence: true
end
