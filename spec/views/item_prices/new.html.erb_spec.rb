require 'rails_helper'

RSpec.describe "item_prices/new", type: :view do
  before(:each) do
    assign(:item_price, ItemPrice.new(
      :valid_price => 1.5,
      :vendor_item => nil
    ))
  end

  it "renders new item_price form" do
    render

    assert_select "form[action=?][method=?]", item_prices_path, "post" do

      assert_select "input#item_price_valid_price[name=?]", "item_price[valid_price]"

      assert_select "input#item_price_vendor_item_id[name=?]", "item_price[vendor_item_id]"
    end
  end
end
