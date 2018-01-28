require 'rails_helper'

RSpec.describe "customer_tax_zones/new", type: :view do
  before(:each) do
    assign(:customer_tax_zone, CustomerTaxZone.new(
      :name => "MyString",
      :description => "MyText",
      :tax => 1.5,
      :customer => nil
    ))
  end

  it "renders new customer_tax_zone form" do
    render

    assert_select "form[action=?][method=?]", customer_tax_zones_path, "post" do

      assert_select "input#customer_tax_zone_name[name=?]", "customer_tax_zone[name]"

      assert_select "textarea#customer_tax_zone_description[name=?]", "customer_tax_zone[description]"

      assert_select "input#customer_tax_zone_tax[name=?]", "customer_tax_zone[tax]"

      assert_select "input#customer_tax_zone_customer_id[name=?]", "customer_tax_zone[customer_id]"
    end
  end
end
