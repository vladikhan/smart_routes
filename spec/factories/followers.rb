FactoryBot.define do
  factory :follower do
    follower_id { 1 }
    following_id { 1 }
    status { "MyString" }
  end
end
