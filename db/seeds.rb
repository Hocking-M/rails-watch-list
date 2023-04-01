puts " cleaning database"
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts "creating movies"

10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: "https://picsum.photos/200/300",
    rating: rand(1..5)
  )
  puts "movie #{Movie.last.id} created"
end

puts "creating lists"

categories = ['Action', 'Comedy', 'Drama', 'Horror', 'Romance', 'Science Fiction', 'Thriller']
categories.each do |category|
  List.create!(
    name: category
  )
  puts "List #{List.last.id} created"
end

puts "creating bookmarks"

10.times do
  Bookmark.create!(
    comment: Faker::Quote.famous_last_words,
    movie: Movie.order("RANDOM()").first,
    list: List.all.sample
  )
  puts "bookmark #{Bookmark.last.id} created"
end

puts "done"
