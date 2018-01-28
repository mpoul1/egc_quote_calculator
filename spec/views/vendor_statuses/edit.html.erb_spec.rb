require 'rails_helper'

RSpec.describe "vendor_statuses/edit", type: :view do
  before(:each) do
    @vendor_status = assign(:vendor_status, VendorStatus.create!(
      :name => "MyString",
      :description => "MyText",
      :active => false
    ))
  end

  it "renders the edit vendor_status form" do
    render

    assert_select "form[action=?][method=?]", vendor_status_path(@vendor_status), "post" do

      assert_select "input#vendor_status_name[name=?]", "vendor_status[name]"

      assert_select "textarea#vendor_status_description[name=?]", "vendor_status[description]"

      assert_select "input#vendor_status_active[name=?]", "vendor_status[active]"
    end
  end
end
