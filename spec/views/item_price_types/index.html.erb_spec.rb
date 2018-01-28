require 'rails_helper'

RSpec.describe "item_price_types/index", type: :view do
  before(:each) do
    assign(:item_price_types, [
      ItemPriceType.create!(
        :name => "Name",
        :description => "MyText",
        :active => false,
        :item_price => nil
      ),
      ItemPriceType.create!(
        :name => "Name",
        :description => "MyText",
        :active => false,
        :item_price => nil
      )
    ])
  end

  it "renders a list of item_price_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
