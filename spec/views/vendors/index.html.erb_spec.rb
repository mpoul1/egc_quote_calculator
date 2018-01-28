require 'rails_helper'

RSpec.describe "vendors/index", type: :view do
  before(:each) do
    assign(:vendors, [
      Vendor.create!(
        :name => "Name",
        :account_manager_email => "Account Manager Email",
        :description => "MyText",
        :status => false
      ),
      Vendor.create!(
        :name => "Name",
        :account_manager_email => "Account Manager Email",
        :description => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of vendors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Account Manager Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
