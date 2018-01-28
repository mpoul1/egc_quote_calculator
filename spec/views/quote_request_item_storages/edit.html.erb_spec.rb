require 'rails_helper'

RSpec.describe "quote_request_item_storages/edit", type: :view do
  before(:each) do
    @quote_request_item_storage = assign(:quote_request_item_storage, QuoteRequestItemStorage.create!(
      :name => "MyString",
      :description => "MyText",
      :capacity => 1,
      :backup_size => 1,
      :quote_request_item_server => nil
    ))
  end

  it "renders the edit quote_request_item_storage form" do
    render

    assert_select "form[action=?][method=?]", quote_request_item_storage_path(@quote_request_item_storage), "post" do

      assert_select "input#quote_request_item_storage_name[name=?]", "quote_request_item_storage[name]"

      assert_select "textarea#quote_request_item_storage_description[name=?]", "quote_request_item_storage[description]"

      assert_select "input#quote_request_item_storage_capacity[name=?]", "quote_request_item_storage[capacity]"

      assert_select "input#quote_request_item_storage_backup_size[name=?]", "quote_request_item_storage[backup_size]"

      assert_select "input#quote_request_item_storage_quote_request_item_server_id[name=?]", "quote_request_item_storage[quote_request_item_server_id]"
    end
  end
end
