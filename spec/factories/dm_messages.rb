FactoryBot.define do
  factory :dm_message do
    dm_room { nil }
    user { nil }
    message { "MyText" }
    is_read { false }
  end
end
