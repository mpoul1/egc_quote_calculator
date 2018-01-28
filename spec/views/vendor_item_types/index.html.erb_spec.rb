require 'rails_helper'

RSpec.describe "vendor_item_types/index", type: :view do
  before(:each) do
    assign(:vendor_item_types, [
      VendorItemType.create!(
        :name => "Name",
        :description => "MyText",
        :vendor_item => nil,
        :active => false,
        :quote_request_item => nil
      ),
      VendorItemType.create!(
        :name => "Name",
        :description => "MyText",
        :vendor_item => nil,
        :active => false,
        :quote_request_item => nil
      )
    ])
  end

  it "renders a list of vendor_item_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
