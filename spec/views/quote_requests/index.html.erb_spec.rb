require 'rails_helper'

RSpec.describe "quote_requests/index", type: :view do
  before(:each) do
    assign(:quote_requests, [
      QuoteRequest.create!(
        :project => "Project",
        :customer => nil,
        :description => "MyText"
      ),
      QuoteRequest.create!(
        :project => "Project",
        :customer => nil,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of quote_requests" do
    render
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
