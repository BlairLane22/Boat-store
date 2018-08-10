require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SailboatsHelper. For example:
#
# describe SailboatsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe BoatsHelper, type: :helper do
  it "Should calculate the length from feet to meters" do
    expect(length_in_meters(3.280839895)).to eq 1
  end
end
