require 'rails_helper'

RSpec.describe Boat, type: :model do

  describe "Validations" do
    it {should belong_to(:user)}

    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:brand)}
    it {should validate_presence_of(:price)}
    it {should validate_presence_of(:model)}
    it {should validate_presence_of(:length)}
    it {should validate_presence_of(:category)}
    it {should validate_presence_of(:condition)}
    it {should validate_presence_of(:color)}

    # it {should validate_length_of(:description).maximum(100)}

    it {should validate_numericality_of(:price)}
    it {should validate_numericality_of(:length)}
  end

end
