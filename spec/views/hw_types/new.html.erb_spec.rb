require 'rails_helper'

RSpec.describe "hw_types/new", type: :view do
  before(:each) do
    assign(:hw_type, HwType.new(
      :name => "MyString",
      :description => "MyText",
      :egc_server_type => nil
    ))
  end

  it "renders new hw_type form" do
    render

    assert_select "form[action=?][method=?]", hw_types_path, "post" do

      assert_select "input#hw_type_name[name=?]", "hw_type[name]"

      assert_select "textarea#hw_type_description[name=?]", "hw_type[description]"

      assert_select "input#hw_type_egc_server_type_id[name=?]", "hw_type[egc_server_type_id]"
    end
  end
end
