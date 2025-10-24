FactoryBot.define do
  factory :comment do
    user { nil }
    commentable_type { "MyString" }
    commentable_id { 1 }
    text { "MyText" }
    parent_id { 1 }
    is_flagged { false }
    is_hidden_by_admin { false }
  end
end
