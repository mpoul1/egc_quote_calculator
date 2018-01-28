require 'rails_helper'

RSpec.describe "request_statuses/index", type: :view do
  before(:each) do
    assign(:request_statuses, [
      RequestStatus.create!(
        :name => "Name",
        :description => "MyText",
        :quote_request => nil
      ),
      RequestStatus.create!(
        :name => "Name",
        :description => "MyText",
        :quote_request => nil
      )
    ])
  end

  it "renders a list of request_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
