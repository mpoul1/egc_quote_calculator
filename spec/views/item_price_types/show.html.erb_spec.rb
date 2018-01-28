require 'rails_helper'

RSpec.describe "item_price_types/show", type: :view do
  before(:each) do
    @item_price_type = assign(:item_price_type, ItemPriceType.create!(
      :name => "Name",
      :description => "MyText",
      :active => false,
      :item_price => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
