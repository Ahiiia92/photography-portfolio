Album.destroy_all
Photo.destroy_all

puts 'Creating 5 photos...'
5.times do |i|
  photo = Photo.create!(
    url: Faker::Company.name
  )
  puts "#{i + 1}. #{photo.name}"
end
puts 'Finished!'
