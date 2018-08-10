require 'rails_helper'

RSpec.describe "boats/new", type: :view do
  before(:each) do
    assign(:boat, Boat.new(
      :brand => "MyString",
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

  it "renders new boat form" do
    render

    assert_select "form[action=?][method=?]", boats_path, "post" do

      assert_select "input[name=?]", "boat[brand]"

      assert_select "input[name=?]", "boat[model]"

      assert_select "textarea[name=?]", "boat[description]"

      assert_select "input[name=?]", "boat[condition]"

      assert_select "input[name=?]", "boat[title]"

      assert_select "input[name=?]", "boat[price]"

      assert_select "input[name=?]", "boat[length]"

      assert_select "input[name=?]", "boat[category]"

      assert_select "input[name=?]", "boat[color]"
    end
  end
end
