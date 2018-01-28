require 'rails_helper'

RSpec.describe "quote_request_item_servers/edit", type: :view do
  before(:each) do
    @quote_request_item_server = assign(:quote_request_item_server, QuoteRequestItemServer.create!(
      :required_cpu => 1.5,
      :required_ram => 1,
      :quote_request_item => nil
    ))
  end

  it "renders the edit quote_request_item_server form" do
    render

    assert_select "form[action=?][method=?]", quote_request_item_server_path(@quote_request_item_server), "post" do

      assert_select "input#quote_request_item_server_required_cpu[name=?]", "quote_request_item_server[required_cpu]"

      assert_select "input#quote_request_item_server_required_ram[name=?]", "quote_request_item_server[required_ram]"

      assert_select "input#quote_request_item_server_quote_request_item_id[name=?]", "quote_request_item_server[quote_request_item_id]"
    end
  end
end
