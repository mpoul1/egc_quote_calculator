require 'rails_helper'

RSpec.describe "vendors/show", type: :view do
  before(:each) do
    @vendor = assign(:vendor, Vendor.create!(
      :name => "Name",
      :account_manager_email => "Account Manager Email",
      :description => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Account Manager Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
