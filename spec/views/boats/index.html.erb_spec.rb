require 'rails_helper'

RSpec.describe "boats/index", type: :view do
  before(:each) do
    assign(:boats, [
      Boat.create!(
        :brand => "Brand",
        :model => "Model",
        :description => "MyText",
        :condition => "Condition",
        :title => "Title",
        :price => "9.99",
        :length => "19",
        :category => "Sailboat",
        :color => "Navy"
      ),
      Boat.create!(
        :brand => "Brand",
        :model => "Model",
        :description => "MyText",
        :condition => "Condition",
        :title => "Title",
        :price => "9.99",
        :length => "19",
        :category => "Sailboat",
        :color => "Navy"
      )
    ])
  end

  it "renders a list of boats" do
    render
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "19".to_s, :count => 2
    assert_select "tr>td", :text => "Sailboat".to_s, :count => 2
    assert_select "tr>td", :text => "Navy".to_s, :count => 2
  end
end
