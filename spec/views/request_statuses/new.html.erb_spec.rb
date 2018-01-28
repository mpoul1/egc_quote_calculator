require 'rails_helper'

RSpec.describe "request_statuses/new", type: :view do
  before(:each) do
    assign(:request_status, RequestStatus.new(
      :name => "MyString",
      :description => "MyText",
      :quote_request => nil
    ))
  end

  it "renders new request_status form" do
    render

    assert_select "form[action=?][method=?]", request_statuses_path, "post" do

      assert_select "input#request_status_name[name=?]", "request_status[name]"

      assert_select "textarea#request_status_description[name=?]", "request_status[description]"

      assert_select "input#request_status_quote_request_id[name=?]", "request_status[quote_request_id]"
    end
  end
end
