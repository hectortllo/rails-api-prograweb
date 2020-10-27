class Place < ApplicationRecord

  mount_uploader :image, PlaceUploader
  
  validates :image, presence: false
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :score, presence: true
end
