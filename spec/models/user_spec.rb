require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it {should have_many(:boats).dependent(:destroy)}
  end
end
