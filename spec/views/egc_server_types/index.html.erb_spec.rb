require 'rails_helper'

RSpec.describe "egc_server_types/index", type: :view do
  before(:each) do
    assign(:egc_server_types, [
      EgcServerType.create!(
        :name => "Name",
        :description => "MyText",
        :quote_request_item_server => nil
      ),
      EgcServerType.create!(
        :name => "Name",
        :description => "MyText",
        :quote_request_item_server => nil
      )
    ])
  end

  it "renders a list of egc_server_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
