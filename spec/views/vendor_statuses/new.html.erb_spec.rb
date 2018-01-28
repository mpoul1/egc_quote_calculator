require 'rails_helper'

RSpec.describe "vendor_statuses/new", type: :view do
  before(:each) do
    assign(:vendor_status, VendorStatus.new(
      :name => "MyString",
      :description => "MyText",
      :active => false
    ))
  end

  it "renders new vendor_status form" do
    render

    assert_select "form[action=?][method=?]", vendor_statuses_path, "post" do

      assert_select "input#vendor_status_name[name=?]", "vendor_status[name]"

      assert_select "textarea#vendor_status_description[name=?]", "vendor_status[description]"

      assert_select "input#vendor_status_active[name=?]", "vendor_status[active]"
    end
  end
end
