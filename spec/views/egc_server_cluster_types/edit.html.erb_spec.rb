require 'rails_helper'

RSpec.describe "egc_server_cluster_types/edit", type: :view do
  before(:each) do
    @egc_server_cluster_type = assign(:egc_server_cluster_type, EgcServerClusterType.create!(
      :name => "MyString",
      :description => "MyText",
      :quote_request_item_server => nil,
      :egc_server_type => nil
    ))
  end

  it "renders the edit egc_server_cluster_type form" do
    render

    assert_select "form[action=?][method=?]", egc_server_cluster_type_path(@egc_server_cluster_type), "post" do

      assert_select "input#egc_server_cluster_type_name[name=?]", "egc_server_cluster_type[name]"

      assert_select "textarea#egc_server_cluster_type_description[name=?]", "egc_server_cluster_type[description]"

      assert_select "input#egc_server_cluster_type_quote_request_item_server_id[name=?]", "egc_server_cluster_type[quote_request_item_server_id]"

      assert_select "input#egc_server_cluster_type_egc_server_type_id[name=?]", "egc_server_cluster_type[egc_server_type_id]"
    end
  end
end
