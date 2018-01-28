require 'rails_helper'

RSpec.describe "egc_server_types/new", type: :view do
  before(:each) do
    assign(:egc_server_type, EgcServerType.new(
      :name => "MyString",
      :description => "MyText",
      :quote_request_item_server => nil
    ))
  end

  it "renders new egc_server_type form" do
    render

    assert_select "form[action=?][method=?]", egc_server_types_path, "post" do

      assert_select "input#egc_server_type_name[name=?]", "egc_server_type[name]"

      assert_select "textarea#egc_server_type_description[name=?]", "egc_server_type[description]"

      assert_select "input#egc_server_type_quote_request_item_server_id[name=?]", "egc_server_type[quote_request_item_server_id]"
    end
  end
end
