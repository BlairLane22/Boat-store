require 'rails_helper'

RSpec.describe "boats/show", type: :view do
  before(:each) do
    @boat = assign(:boat, Boat.create!(
      :brand => "Brand",
      :model => "Model",
      :description => "MyText",
      :condition => "Condition",
      :title => "Title",
      :price => "9.99",
      :length => "19",
      :category => "Sailboat",
      :color => "Navy"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Condition/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/Sailboat/)
    expect(rendered).to match(/Navy/)
  end
end
