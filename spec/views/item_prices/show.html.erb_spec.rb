require 'rails_helper'

RSpec.describe "item_prices/show", type: :view do
  before(:each) do
    @item_price = assign(:item_price, ItemPrice.create!(
      :valid_price => 2.5,
      :vendor_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
