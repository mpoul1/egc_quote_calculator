require 'rails_helper'

RSpec.describe "quote_request_items/index", type: :view do
  before(:each) do
    assign(:quote_request_items, [
      QuoteRequestItem.create!(
        :pieces => 2.5,
        :description => "MyText"
      ),
      QuoteRequestItem.create!(
        :pieces => 2.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of quote_request_items" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
