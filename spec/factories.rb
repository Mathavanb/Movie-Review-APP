FactoryBot.define do
  factory :reviewpg do
    review { "Test review" }
    rating { 4 }
    association :homepg
    association :user
  end
end
