require 'rails_helper'

RSpec.describe "egc_server_cluster_types/index", type: :view do
  before(:each) do
    assign(:egc_server_cluster_types, [
      EgcServerClusterType.create!(
        :name => "Name",
        :description => "MyText",
        :quote_request_item_server => nil,
        :egc_server_type => nil
      ),
      EgcServerClusterType.create!(
        :name => "Name",
        :description => "MyText",
        :quote_request_item_server => nil,
        :egc_server_type => nil
      )
    ])
  end

  it "renders a list of egc_server_cluster_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
