require 'rails_helper'

RSpec.describe "vendor_items/index", type: :view do
  before(:each) do
    assign(:vendor_items, [
      VendorItem.create!(
        :name => "Name",
        :purchased_price => 2.5,
        :description => "MyText",
        :vendor => nil,
        :quote_request_item => nil
      ),
      VendorItem.create!(
        :name => "Name",
        :purchased_price => 2.5,
        :description => "MyText",
        :vendor => nil,
        :quote_request_item => nil
      )
    ])
  end

  it "renders a list of vendor_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
