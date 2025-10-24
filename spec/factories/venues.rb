FactoryBot.define do
  factory :venue do
    district { nil }
    user { nil }
    name { "MyString" }
    venue_type { "MyString" }
    address { "MyString" }
    description { "MyText" }
    cuisine_type { "MyString" }
    price_range { "MyString" }
    geo_lat { "9.99" }
    geo_lng { "9.99" }
    phone { "MyString" }
    website { "MyString" }
    business_hours { "MyText" }
    view_count { 1 }
    save_count { 1 }
    popularity_score { 1.5 }
    is_featured { false }
    featured_order { 1 }
    is_claimed { false }
    claimed_at { "2025-10-24 11:16:03" }
    verified_business { false }
    status { "MyString" }
    reviews_count { 1 }
    likes_count { 1 }
  end
end
