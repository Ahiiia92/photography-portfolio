require 'faker'
require "open-uri"

puts 'Deleting all Albums'
Album.destroy_all

puts 'Creating 5 Albums'
10.times do |i|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  album = Album.create!(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city,
    country: Faker::Address.country,
    date: Faker::Date.between_except(from: 4.year.ago, to: 1.year.from_now, excepted: Date.today),
    quote: Faker::Quote.yoda
  )
  album.cover.attach(io: file, filename: "#{album.title}.png", content_type: 'image/png')

  puts "#{i + 1}. #{album.title} created"
end
puts "Albums ==> Done"
