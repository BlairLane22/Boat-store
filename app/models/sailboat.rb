class Sailboat < ApplicationRecord
  mount_uploader :image, ImageUploader
  # serialize :image, JSON

  belongs_to :user, optional: true

  validates :title, :brand, :price, :model, :length, presence: true
  validates :description, length: { maximum: 1000, too_long: "#{count} characters is the maximum" }
  validates :title, length: { maximum: 140, too_long: "#{count} characters is the maximum allowed" }
  validates_numericality_of :price, :length

  BRAND = ["Jeanneau", "Wally", "Dehler", "Hanse Yachts"]
  COLOR = ["Black", "White", "Navy", "Blue", "Red", "Satin", "Yellow"]
  CONDITION = ["New", "Excellent", "Mint", "Used", "Fair", "Poor"]


  def self.length(length)
    length * 3.2808
  end

end
