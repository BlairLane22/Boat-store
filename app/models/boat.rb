class Boat < ApplicationRecord
  mount_uploader :image, ImageUploader
  # serialize :image, JSON

  acts_as_punchable

  belongs_to :user, optional: true

  validates :title, :brand, :price, :model, :length, :category, :condition, :color, presence: true
  validates :description, length: { maximum: 1000, too_long: "#{count} characters is the maximum" }
  validates :title, length: { maximum: 140, too_long: "#{count} characters is the maximum allowed" }
  validates_numericality_of :price, :length

  BRAND = ["Jeanneau", "Wally", "Dehler", "Hanse Yachts", "Beneteau", "Leopard", "Catalina Yachts"]
  COLOR = ["Black", "White", "Navy", "Blue", "Red", "Satin", "Yellow", "Orange", "Green", "Grey"]
  CONDITION = ["New", "Excellent", "Mint", "Used", "Fair", "Poor", "Scraps"]
  CATEGORY = ["Sailboat", "Motor boat", "Luxery yacht", "Dingui"]

end
