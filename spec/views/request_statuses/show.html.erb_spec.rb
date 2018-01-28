require 'rails_helper'

RSpec.describe "request_statuses/show", type: :view do
  before(:each) do
    @request_status = assign(:request_status, RequestStatus.create!(
      :name => "Name",
      :description => "MyText",
      :quote_request => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
