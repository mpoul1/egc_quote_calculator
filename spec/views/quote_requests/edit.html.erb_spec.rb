require 'rails_helper'

RSpec.describe "quote_requests/edit", type: :view do
  before(:each) do
    @quote_request = assign(:quote_request, QuoteRequest.create!(
      :project => "MyString",
      :customer => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit quote_request form" do
    render

    assert_select "form[action=?][method=?]", quote_request_path(@quote_request), "post" do

      assert_select "input#quote_request_project[name=?]", "quote_request[project]"

      assert_select "input#quote_request_customer_id[name=?]", "quote_request[customer_id]"

      assert_select "textarea#quote_request_description[name=?]", "quote_request[description]"
    end
  end
end
