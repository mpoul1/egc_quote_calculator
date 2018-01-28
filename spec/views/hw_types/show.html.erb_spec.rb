require 'rails_helper'

RSpec.describe "hw_types/show", type: :view do
  before(:each) do
    @hw_type = assign(:hw_type, HwType.create!(
      :name => "Name",
      :description => "MyText",
      :egc_server_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
