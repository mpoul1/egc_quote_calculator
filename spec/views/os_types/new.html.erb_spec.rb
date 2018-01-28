require 'rails_helper'

RSpec.describe "os_types/new", type: :view do
  before(:each) do
    assign(:os_type, OsType.new(
      :name => "MyString",
      :description => "MyText",
      :egc_server_type => nil
    ))
  end

  it "renders new os_type form" do
    render

    assert_select "form[action=?][method=?]", os_types_path, "post" do

      assert_select "input#os_type_name[name=?]", "os_type[name]"

      assert_select "textarea#os_type_description[name=?]", "os_type[description]"

      assert_select "input#os_type_egc_server_type_id[name=?]", "os_type[egc_server_type_id]"
    end
  end
end
