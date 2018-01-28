require 'rails_helper'

RSpec.describe "quote_request_item_servers/show", type: :view do
  before(:each) do
    @quote_request_item_server = assign(:quote_request_item_server, QuoteRequestItemServer.create!(
      :required_cpu => 2.5,
      :required_ram => 3,
      :quote_request_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
