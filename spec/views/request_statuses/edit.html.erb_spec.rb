require 'rails_helper'

RSpec.describe "request_statuses/edit", type: :view do
  before(:each) do
    @request_status = assign(:request_status, RequestStatus.create!(
      :name => "MyString",
      :description => "MyText",
      :quote_request => nil
    ))
  end

  it "renders the edit request_status form" do
    render

    assert_select "form[action=?][method=?]", request_status_path(@request_status), "post" do

      assert_select "input#request_status_name[name=?]", "request_status[name]"

      assert_select "textarea#request_status_description[name=?]", "request_status[description]"

      assert_select "input#request_status_quote_request_id[name=?]", "request_status[quote_request_id]"
    end
  end
end
