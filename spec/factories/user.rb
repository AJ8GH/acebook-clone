FactoryBot.define do
  factory :user do
    name { 'John' }
    surname  { 'Doe' }
    email { 'email@email.com'}
    password { 'Password' }
  end
end
