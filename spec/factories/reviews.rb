FactoryBot.define do
  factory :review do
    user { nil }
    reviewable_type { "MyString" }
    reviewable_id { 1 }
    text { "MyText" }
    total_score { "9.99" }
    is_flagged { false }
    flagged_at { "2025-10-24 11:32:45" }
    flagged_by { 1 }
    is_hidden_by_admin { false }
    likes_count { 1 }
  end
end
