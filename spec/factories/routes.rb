FactoryBot.define do
  factory :route do
    user { nil }
    name { "MyString" }
    description { "MyText" }
    is_public { false }
    view_count { 1 }
    download_count { 1 }
    completion_count { 1 }
    popularity_score { 1.5 }
    is_featured { false }
    featured_order { 1 }
    estimated_duration { 1 }
    estimated_cost { 1 }
    difficulty_level { "MyString" }
    is_deleted { false }
    likes_count { 1 }
    reviews_count { 1 }
  end
end
