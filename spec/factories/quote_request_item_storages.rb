FactoryBot.define do
  factory :quote_request_item_storage do
    name "MyString"
    description "MyText"
    capacity 1
    backup_size 1
    quote_request_item_server nil
  end
end
