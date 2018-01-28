require 'rails_helper'

RSpec.describe "quote_request_item_storages/index", type: :view do
  before(:each) do
    assign(:quote_request_item_storages, [
      QuoteRequestItemStorage.create!(
        :name => "Name",
        :description => "MyText",
        :capacity => 2,
        :backup_size => 3,
        :quote_request_item_server => nil
      ),
      QuoteRequestItemStorage.create!(
        :name => "Name",
        :description => "MyText",
        :capacity => 2,
        :backup_size => 3,
        :quote_request_item_server => nil
      )
    ])
  end

  it "renders a list of quote_request_item_storages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
