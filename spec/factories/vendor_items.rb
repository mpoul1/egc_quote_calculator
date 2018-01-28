FactoryGirl.define do
  factory :vendor_item do
    name "MyString"
    purchased_price 1.5
    description "MyText"
    vendor nil
    quote_request_item nil
  end
end
