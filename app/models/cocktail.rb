class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  validates :name, presence: true, allow_blank: false, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
