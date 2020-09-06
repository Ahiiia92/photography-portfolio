require 'faker'
require "open-uri"
require 'pry-byebug'

puts 'Deleting all Albums'
# Album.destroy_all
puts 'Deleting all Categories'
# Category.destroy_all

puts 'Creating 10 Albums'
10.times do |i|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  album = Album.create!(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city,
    country: Faker::Address.country,
    date: Faker::Date.between_except(from: 4.year.ago, to: 1.year.from_now, excepted: Date.today),
    quote: Faker::Quote.yoda,
    user_id: User.last.id
  )

  puts "Start a Category"
  category = Category.create!(
    name: Faker::Book.genre,
    album_id: album.id
  )
  puts "Category - #{category.name} created - id: #{category.id}"

  album.cover.attach(io: file, filename: "#{album.title}.png", content_type: 'image/png')
  puts "#{i + 1} - #{album.title} created. id: #{album.id}"

end

puts "Albums & Categories ==> Done"

