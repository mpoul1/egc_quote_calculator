require 'rails_helper'

RSpec.describe "os_types/edit", type: :view do
  before(:each) do
    @os_type = assign(:os_type, OsType.create!(
      :name => "MyString",
      :description => "MyText",
      :egc_server_type => nil
    ))
  end

  it "renders the edit os_type form" do
    render

    assert_select "form[action=?][method=?]", os_type_path(@os_type), "post" do

      assert_select "input#os_type_name[name=?]", "os_type[name]"

      assert_select "textarea#os_type_description[name=?]", "os_type[description]"

      assert_select "input#os_type_egc_server_type_id[name=?]", "os_type[egc_server_type_id]"
    end
  end
end
