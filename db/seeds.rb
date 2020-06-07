require 'faker'

Album.destroy_all

puts 'Creating 5 Albums'
5.times do |i|
  album = Album.create!(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city,
    country: Faker::Address.country,
    date: Faker::Date.between_except(from: 4.year.ago, to: 1.year.from_now, excepted: Date.today),
    quote: Faker::Quote.yoda,
    user_id: User.last.id
  )
  puts "#{i + 1}. #{album.title} created"
end
puts "Albums ==> Done"
