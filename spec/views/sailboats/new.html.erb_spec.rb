require 'rails_helper'

RSpec.describe "sailboats/new", type: :view do
  before(:each) do
    assign(:sailboat, Sailboat.new(
      :brand => "MyString",
      :model => "MyString",
      :description => "MyText",
      :condition => "MyString",
      :finish => "MyString",
      :title => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new sailboat form" do
    render

    assert_select "form[action=?][method=?]", sailboats_path, "post" do

      assert_select "input[name=?]", "sailboat[brand]"

      assert_select "input[name=?]", "sailboat[model]"

      assert_select "textarea[name=?]", "sailboat[description]"

      assert_select "input[name=?]", "sailboat[condition]"

      assert_select "input[name=?]", "sailboat[finish]"

      assert_select "input[name=?]", "sailboat[title]"

      assert_select "input[name=?]", "sailboat[price]"
    end
  end
end
