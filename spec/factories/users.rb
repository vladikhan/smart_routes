FactoryBot.define do
  factory :user do
    username { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    bio { "MyText" }
    image_url { "MyString" }
    location { "MyString" }
    budget_min { "MyString" }
    budget_max { 1 }
    is_admin { false }
    is_banned { false }
    banned_at { "2025-10-24 11:04:15" }
    banned_by { 1 }
    ban_reason { "MyText" }
    email_verified { false }
    phone { "MyString" }
    is_online { false }
    last_seen_at { "2025-10-24 11:04:15" }
    langauge { "MyString" }
    timezone { "MyString" }
    date_format { "MyString" }
    username_last_changed_at { "2025-10-24 11:04:15" }
  end
end
