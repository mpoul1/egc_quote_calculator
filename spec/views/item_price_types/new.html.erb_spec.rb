require 'rails_helper'

RSpec.describe "item_price_types/new", type: :view do
  before(:each) do
    assign(:item_price_type, ItemPriceType.new(
      :name => "MyString",
      :description => "MyText",
      :active => false,
      :item_price => nil
    ))
  end

  it "renders new item_price_type form" do
    render

    assert_select "form[action=?][method=?]", item_price_types_path, "post" do

      assert_select "input#item_price_type_name[name=?]", "item_price_type[name]"

      assert_select "textarea#item_price_type_description[name=?]", "item_price_type[description]"

      assert_select "input#item_price_type_active[name=?]", "item_price_type[active]"

      assert_select "input#item_price_type_item_price_id[name=?]", "item_price_type[item_price_id]"
    end
  end
end
