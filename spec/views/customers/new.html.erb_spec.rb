require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :name => "MyString",
      :description => "MyText",
      :customer => nil
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "textarea#customer_description[name=?]", "customer[description]"

      assert_select "input#customer_customer_id[name=?]", "customer[customer_id]"
    end
  end
end
