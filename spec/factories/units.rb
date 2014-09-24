# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :unit do
    lessor_id 1
    address "MyString"
    unit_number "MyString"
    city "MyString"
    state "MyString"
    postal_code "MyString"
    total_rent "9.99"
    payment_day 1
  end
end
