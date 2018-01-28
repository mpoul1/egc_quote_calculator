require 'rails_helper'

RSpec.describe "customer_tax_zones/edit", type: :view do
  before(:each) do
    @customer_tax_zone = assign(:customer_tax_zone, CustomerTaxZone.create!(
      :name => "MyString",
      :description => "MyText",
      :tax => 1.5,
      :customer => nil
    ))
  end

  it "renders the edit customer_tax_zone form" do
    render

    assert_select "form[action=?][method=?]", customer_tax_zone_path(@customer_tax_zone), "post" do

      assert_select "input#customer_tax_zone_name[name=?]", "customer_tax_zone[name]"

      assert_select "textarea#customer_tax_zone_description[name=?]", "customer_tax_zone[description]"

      assert_select "input#customer_tax_zone_tax[name=?]", "customer_tax_zone[tax]"

      assert_select "input#customer_tax_zone_customer_id[name=?]", "customer_tax_zone[customer_id]"
    end
  end
end
