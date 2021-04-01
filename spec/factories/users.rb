FactoryBot.define do
  factory :user do
    nickname { 'test1' }
    email {Faker::Internet.free_email}
    password = '1a' + Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }
  end
end
