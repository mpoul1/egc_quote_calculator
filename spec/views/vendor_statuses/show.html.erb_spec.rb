require 'rails_helper'

RSpec.describe "vendor_statuses/show", type: :view do
  before(:each) do
    @vendor_status = assign(:vendor_status, VendorStatus.create!(
      :name => "Name",
      :description => "MyText",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
