require 'rails_helper'

RSpec.describe "quote_request_item_servers/new", type: :view do
  before(:each) do
    assign(:quote_request_item_server, QuoteRequestItemServer.new(
      :required_cpu => 1.5,
      :required_ram => 1,
      :quote_request_item => nil
    ))
  end

  it "renders new quote_request_item_server form" do
    render

    assert_select "form[action=?][method=?]", quote_request_item_servers_path, "post" do

      assert_select "input#quote_request_item_server_required_cpu[name=?]", "quote_request_item_server[required_cpu]"

      assert_select "input#quote_request_item_server_required_ram[name=?]", "quote_request_item_server[required_ram]"

      assert_select "input#quote_request_item_server_quote_request_item_id[name=?]", "quote_request_item_server[quote_request_item_id]"
    end
  end
end
