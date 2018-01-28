require 'rails_helper'

RSpec.describe "quote_request_item_storages/show", type: :view do
  before(:each) do
    @quote_request_item_storage = assign(:quote_request_item_storage, QuoteRequestItemStorage.create!(
      :name => "Name",
      :description => "MyText",
      :capacity => 2,
      :backup_size => 3,
      :quote_request_item_server => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
