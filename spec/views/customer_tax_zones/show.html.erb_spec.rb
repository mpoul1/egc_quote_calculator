require 'rails_helper'

RSpec.describe "customer_tax_zones/show", type: :view do
  before(:each) do
    @customer_tax_zone = assign(:customer_tax_zone, CustomerTaxZone.create!(
      :name => "Name",
      :description => "MyText",
      :tax => 2.5,
      :customer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
