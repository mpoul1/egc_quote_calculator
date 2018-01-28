require 'rails_helper'

RSpec.describe "customer_tax_zones/index", type: :view do
  before(:each) do
    assign(:customer_tax_zones, [
      CustomerTaxZone.create!(
        :name => "Name",
        :description => "MyText",
        :tax => 2.5,
        :customer => nil
      ),
      CustomerTaxZone.create!(
        :name => "Name",
        :description => "MyText",
        :tax => 2.5,
        :customer => nil
      )
    ])
  end

  it "renders a list of customer_tax_zones" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
