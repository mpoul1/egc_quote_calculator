require 'rails_helper'

RSpec.describe "quote_request_items/new", type: :view do
  before(:each) do
    assign(:quote_request_item, QuoteRequestItem.new(
      :pieces => 1.5,
      :description => "MyText"
    ))
  end

  it "renders new quote_request_item form" do
    render

    assert_select "form[action=?][method=?]", quote_request_items_path, "post" do

      assert_select "input#quote_request_item_pieces[name=?]", "quote_request_item[pieces]"

      assert_select "textarea#quote_request_item_description[name=?]", "quote_request_item[description]"
    end
  end
end
