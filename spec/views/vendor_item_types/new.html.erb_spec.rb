require 'rails_helper'

RSpec.describe "vendor_item_types/new", type: :view do
  before(:each) do
    assign(:vendor_item_type, VendorItemType.new(
      :name => "MyString",
      :description => "MyText",
      :vendor_item => nil,
      :active => false,
      :quote_request_item => nil
    ))
  end

  it "renders new vendor_item_type form" do
    render

    assert_select "form[action=?][method=?]", vendor_item_types_path, "post" do

      assert_select "input#vendor_item_type_name[name=?]", "vendor_item_type[name]"

      assert_select "textarea#vendor_item_type_description[name=?]", "vendor_item_type[description]"

      assert_select "input#vendor_item_type_vendor_item_id[name=?]", "vendor_item_type[vendor_item_id]"

      assert_select "input#vendor_item_type_active[name=?]", "vendor_item_type[active]"

      assert_select "input#vendor_item_type_quote_request_item_id[name=?]", "vendor_item_type[quote_request_item_id]"
    end
  end
end
