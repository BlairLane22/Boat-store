require 'rails_helper'

RSpec.describe "boats/edit", type: :view do
  before(:each) do
    @boat = assign(:boat, Boat.create!(
      :brand => "Jeanneau",
      :model => "MyString",
      :description => "MyText",
      :condition => "MyString",
      :title => "MyString",
      :price => "9.99",
      :length => "19",
      :category => "Sailboat",
      :color => "Navy"
    ))
  end

  it "renders the edit boat form" do
    render

    assert_select "form[action=?][method=?]", boat_path(@boat), "post" do

      assert_select "input[name=?]", "boat[brand]"

      assert_select "input[name=?]", "boat[model]"

      assert_select "textarea[name=?]", "boat[description]"

      assert_select "input[name=?]", "boat[condition]"

      assert_select "input[name=?]", "boat[finish]"

      assert_select "input[name=?]", "boat[title]"

      assert_select "input[name=?]", "boat[price]"

      assert_select "input[name=?]", "boat[length]"

      assert_select "input[name=?]", "boat[category]"

      assert_select "input[name=?]", "boat[color]"
    end
  end
end
