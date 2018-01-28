require 'rails_helper'

RSpec.describe "vendor_items/show", type: :view do
  before(:each) do
    @vendor_item = assign(:vendor_item, VendorItem.create!(
      :name => "Name",
      :purchased_price => 2.5,
      :description => "MyText",
      :vendor => nil,
      :quote_request_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
