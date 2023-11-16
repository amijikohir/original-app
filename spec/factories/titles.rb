FactoryBot.define do
  factory :title do
    content {Faker::Lorem.sentence}
    amount {Faker::Number.between(to: 7)}
    memo {Faker::Lorem.sentence}
    association :user
    association :room
  end
end