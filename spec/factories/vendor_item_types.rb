FactoryGirl.define do
  factory :vendor_item_type do
    name "MyString"
    description "MyText"
    vendor_item nil
    active false
    quote_request_item nil
  end
end
