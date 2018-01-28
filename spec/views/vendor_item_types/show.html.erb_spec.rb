require 'rails_helper'

RSpec.describe "vendor_item_types/show", type: :view do
  before(:each) do
    @vendor_item_type = assign(:vendor_item_type, VendorItemType.create!(
      :name => "Name",
      :description => "MyText",
      :vendor_item => nil,
      :active => false,
      :quote_request_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
