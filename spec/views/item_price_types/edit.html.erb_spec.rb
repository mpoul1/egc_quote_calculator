require 'rails_helper'

RSpec.describe "item_price_types/edit", type: :view do
  before(:each) do
    @item_price_type = assign(:item_price_type, ItemPriceType.create!(
      :name => "MyString",
      :description => "MyText",
      :active => false,
      :item_price => nil
    ))
  end

  it "renders the edit item_price_type form" do
    render

    assert_select "form[action=?][method=?]", item_price_type_path(@item_price_type), "post" do

      assert_select "input#item_price_type_name[name=?]", "item_price_type[name]"

      assert_select "textarea#item_price_type_description[name=?]", "item_price_type[description]"

      assert_select "input#item_price_type_active[name=?]", "item_price_type[active]"

      assert_select "input#item_price_type_item_price_id[name=?]", "item_price_type[item_price_id]"
    end
  end
end
