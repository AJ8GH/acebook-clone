FactoryBot.define do
  factory :post do
    message { 'Test post' }
    association :user
  end
end
