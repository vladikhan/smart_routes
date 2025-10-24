FactoryBot.define do
  factory :place_owner do
    user { nil }
    venue { nil }
    role { "MyString" }
    status { "MyString" }
    verified_at { "2025-10-24 12:02:02" }
    verified_by { 1 }
    business_name { "MyString" }
    contact_email { "MyString" }
    contact_phone { "MyString" }
    verification_document_url { "MyString" }
    verification_notes { "MyText" }
  end
end
