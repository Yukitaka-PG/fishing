FactoryBot.define do
  factory :information do
    title { 'タイトル' }
    text { 'テキスト' }
    date_id { 20210401 }
    fish { '魚' }
    size { 1 }
    weight { 1 }
    number { 1 }
    prefecture_id { 2 }
    area { '地域' }

    after(:build) do |information|
      information.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png', content_type: 'image/png')
    end
  end
end
