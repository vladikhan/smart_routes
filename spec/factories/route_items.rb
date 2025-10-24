FactoryBot.define do
  factory :route_item do
    route { nil }
    item_type { "MyString" }
    item_id { 1 }
    position { 1 }
    notes { "MyText" }
  end
end
