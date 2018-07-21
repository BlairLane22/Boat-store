require 'rails_helper'

RSpec.describe Sailboat, type: :model do

  it "Should calculate the length in feet" do
    expect(Sailboat.length(1)).to eq 3.2808
  end

end
