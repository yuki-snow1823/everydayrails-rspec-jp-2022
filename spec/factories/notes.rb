FactoryBot.define do
  factory :note do
    message { "My important note here"}
    association :project
    association :user
  end
end
