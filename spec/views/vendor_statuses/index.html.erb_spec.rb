require 'rails_helper'

RSpec.describe "vendor_statuses/index", type: :view do
  before(:each) do
    assign(:vendor_statuses, [
      VendorStatus.create!(
        :name => "Name",
        :description => "MyText",
        :active => false
      ),
      VendorStatus.create!(
        :name => "Name",
        :description => "MyText",
        :active => false
      )
    ])
  end

  it "renders a list of vendor_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
