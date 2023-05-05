FactoryBot.define do
  factory :homepg do
    movie_name { Faker::Movie.title }
    release_date { Faker::Date.between(from: 5.years.ago, to: Date.today) }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'images', 'test_image.jpg'), 'image/jpeg') }
    video { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'videos', 'test_video.mp4'), 'video/mp4') }
    description { Faker::Lorem.paragraph }
  end
end
