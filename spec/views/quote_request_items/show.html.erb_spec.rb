require 'rails_helper'

RSpec.describe "quote_request_items/show", type: :view do
  before(:each) do
    @quote_request_item = assign(:quote_request_item, QuoteRequestItem.create!(
      :pieces => 2.5,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
  end
end
