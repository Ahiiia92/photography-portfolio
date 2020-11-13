require 'faker'
require "open-uri"
require "pry-byebug"

puts 'Deleting all Albums'
Album.destroy_all

User.create!(
  username: "marou",
  password: 123456,
  email: "marou@marou.de",
  admin: true
)

puts 'Creating some Categories'
CATEGORY = [
  'Nature',
  'Urban',
  'Wedding',
  'Black & White',
  'Travel',
  'LifeStyle'
]

puts 'Creating 5 Albums'
10.times do |i|
  file = URI.open('https://picsum.photos/200/300')
  album = Album.create!(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city,
    country: Faker::Address.country,
    date: Faker::Date.between_except(from: 4.year.ago, to: 1.year.from_now, excepted: Date.today),
    quote: Faker::Quote.yoda,
    category: CATEGORY[0..5],
    user_id: User.last.id
  )
  album.cover.attach(io: file, filename: "#{album.title}.png", content_type: 'image/png')

  puts "#{i + 1}. #{album.title} created"
end

puts 'Albums ==> Done'
