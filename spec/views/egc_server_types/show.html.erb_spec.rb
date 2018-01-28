require 'rails_helper'

RSpec.describe "egc_server_types/show", type: :view do
  before(:each) do
    @egc_server_type = assign(:egc_server_type, EgcServerType.create!(
      :name => "Name",
      :description => "MyText",
      :quote_request_item_server => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
