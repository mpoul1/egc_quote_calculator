require 'rails_helper'

RSpec.describe "vendor_items/edit", type: :view do
  before(:each) do
    @vendor_item = assign(:vendor_item, VendorItem.create!(
      :name => "MyString",
      :purchased_price => 1.5,
      :description => "MyText",
      :vendor => nil,
      :quote_request_item => nil
    ))
  end

  it "renders the edit vendor_item form" do
    render

    assert_select "form[action=?][method=?]", vendor_item_path(@vendor_item), "post" do

      assert_select "input#vendor_item_name[name=?]", "vendor_item[name]"

      assert_select "input#vendor_item_purchased_price[name=?]", "vendor_item[purchased_price]"

      assert_select "textarea#vendor_item_description[name=?]", "vendor_item[description]"

      assert_select "input#vendor_item_vendor_id[name=?]", "vendor_item[vendor_id]"

      assert_select "input#vendor_item_quote_request_item_id[name=?]", "vendor_item[quote_request_item_id]"
    end
  end
end
