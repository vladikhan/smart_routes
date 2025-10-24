FactoryBot.define do
  factory :entity_tag do
    tag { nil }
    entity_type { "MyString" }
    entity_id { 1 }
  end
end
