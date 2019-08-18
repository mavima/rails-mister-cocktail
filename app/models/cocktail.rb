class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  validates :content, length: { minimum: 20 }
  mount_uploader :photo, PhotoUploader
end
