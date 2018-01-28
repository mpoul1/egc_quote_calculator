FactoryBot.define do
  factory :customer_tax_zone do
    name "MyString"
    description "MyText"
    tax 1.5
    customer nil
  end
end
