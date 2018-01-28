require 'rails_helper'

RSpec.describe "vendors/new", type: :view do
  before(:each) do
    assign(:vendor, Vendor.new(
      :name => "MyString",
      :account_manager_email => "MyString",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders new vendor form" do
    render

    assert_select "form[action=?][method=?]", vendors_path, "post" do

      assert_select "input#vendor_name[name=?]", "vendor[name]"

      assert_select "input#vendor_account_manager_email[name=?]", "vendor[account_manager_email]"

      assert_select "textarea#vendor_description[name=?]", "vendor[description]"

      assert_select "input#vendor_status[name=?]", "vendor[status]"
    end
  end
end
