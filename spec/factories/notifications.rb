FactoryBot.define do
  factory :notification do
    user { nil }
    actor { nil }
    notification_type { "MyString" }
    entity_type { "MyString" }
    entity_id { 1 }
    is_read { false }
  end
end
