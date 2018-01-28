require 'rails_helper'

RSpec.describe "quote_request_item_servers/index", type: :view do
  before(:each) do
    assign(:quote_request_item_servers, [
      QuoteRequestItemServer.create!(
        :required_cpu => 2.5,
        :required_ram => 3,
        :quote_request_item => nil
      ),
      QuoteRequestItemServer.create!(
        :required_cpu => 2.5,
        :required_ram => 3,
        :quote_request_item => nil
      )
    ])
  end

  it "renders a list of quote_request_item_servers" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
