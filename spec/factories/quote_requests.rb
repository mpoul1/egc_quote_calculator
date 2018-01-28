FactoryGirl.define do
  factory :quote_request do
    project "MyString"
    customer nil
    requested_at "2018-01-28 16:31:08"
    description "MyText"
  end
end
