require 'rails_helper'

RSpec.describe "os_types/show", type: :view do
  before(:each) do
    @os_type = assign(:os_type, OsType.create!(
      :name => "Name",
      :description => "MyText",
      :egc_server_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
