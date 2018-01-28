require 'rails_helper'

RSpec.describe "item_prices/index", type: :view do
  before(:each) do
    assign(:item_prices, [
      ItemPrice.create!(
        :valid_price => 2.5,
        :vendor_item => nil
      ),
      ItemPrice.create!(
        :valid_price => 2.5,
        :vendor_item => nil
      )
    ])
  end

  it "renders a list of item_prices" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
