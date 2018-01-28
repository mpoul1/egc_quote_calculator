require 'rails_helper'

RSpec.describe "quote_requests/show", type: :view do
  before(:each) do
    @quote_request = assign(:quote_request, QuoteRequest.create!(
      :project => "Project",
      :customer => nil,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Project/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
