FactoryBot.define do
  factory :user, aliases: [:owner] do
    first_name { "Aaron" }
    last_name  { "Sumner" }
    sequence(:email) { |n| "tester#{n}@example.com" }
    password { "dottle-nouveau-pavilion-tights-furze" }
  end

  trait :with_projects do
    after(:create) { |user| create_list(:project, 1, owner: user) }
  end

  trait :no_name_user do
    first_name { nil }
  end
end
