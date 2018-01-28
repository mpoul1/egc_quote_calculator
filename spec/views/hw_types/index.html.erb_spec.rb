require 'rails_helper'

RSpec.describe "hw_types/index", type: :view do
  before(:each) do
    assign(:hw_types, [
      HwType.create!(
        :name => "Name",
        :description => "MyText",
        :egc_server_type => nil
      ),
      HwType.create!(
        :name => "Name",
        :description => "MyText",
        :egc_server_type => nil
      )
    ])
  end

  it "renders a list of hw_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
