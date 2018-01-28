require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyString",
      :description => "MyText",
      :customer => nil
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "textarea#customer_description[name=?]", "customer[description]"

      assert_select "input#customer_customer_id[name=?]", "customer[customer_id]"
    end
  end
end
