FactoryBot.define do
  factory :like do
    user { nil }
    likeable_type { "MyString" }
    likeable_id { 1 }
  end
end
