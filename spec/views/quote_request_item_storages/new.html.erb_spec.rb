require 'rails_helper'

RSpec.describe "quote_request_item_storages/new", type: :view do
  before(:each) do
    assign(:quote_request_item_storage, QuoteRequestItemStorage.new(
      :name => "MyString",
      :description => "MyText",
      :capacity => 1,
      :backup_size => 1,
      :quote_request_item_server => nil
    ))
  end

  it "renders new quote_request_item_storage form" do
    render

    assert_select "form[action=?][method=?]", quote_request_item_storages_path, "post" do

      assert_select "input#quote_request_item_storage_name[name=?]", "quote_request_item_storage[name]"

      assert_select "textarea#quote_request_item_storage_description[name=?]", "quote_request_item_storage[description]"

      assert_select "input#quote_request_item_storage_capacity[name=?]", "quote_request_item_storage[capacity]"

      assert_select "input#quote_request_item_storage_backup_size[name=?]", "quote_request_item_storage[backup_size]"

      assert_select "input#quote_request_item_storage_quote_request_item_server_id[name=?]", "quote_request_item_storage[quote_request_item_server_id]"
    end
  end
end
