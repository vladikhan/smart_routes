FactoryBot.define do
  factory :bookmark do
    user { nil }
    item_type { "MyString" }
    item_id { 1 }
    collection_name { "MyString" }
    notes { "MyText" }
  end
end
