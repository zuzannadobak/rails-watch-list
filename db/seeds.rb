# First we need to make sure that our database is clean
# to avoid dublicates
puts "Cleaning Database 🧼"
Movie.destroy_all
List.destroy_all

# Creating our Movie DB
puts "Creating Movies 🍿"
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7)
Movie.create(title: "Lady Bird", overview: "A California high school student plans to escape from her family and small town by going to college in New York.", poster_url: "https://image.tmdb.org/t/p/original/mKj1PdAU2Ed8z1fY0xqfXZXDdNQ.jpg", rating: 7)
Movie.create(title: "The Farewell", overview: "A headstrong Chinese-American woman returns to China when her beloved grandmother is diagnosed with terminal cancer.", poster_url: "https://image.tmdb.org/t/p/original/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg", rating: 7)
Movie.create(title: "A Beautiful Day in the Neighborhood", overview: "Based on the true story of a real-life friendship between Fred Rogers and journalist Lloyd Vogel.", poster_url: "https://image.tmdb.org/t/p/original/ArWn6gCi61b3b3hclD2L0LOk66k.jpg", rating: 7)
Movie.create(title: "Little Women", overview: "The lives of four sisters—Jo, Meg, Amy, and Beth—detailing their passage from childhood to womanhood.", poster_url: "https://image.tmdb.org/t/p/original/rXAOuHyyTq4S2cFaOJ9O90931tZ.jpg", rating: 7)
Movie.create(title: "Nomadland", overview: "A woman in her sixties who, after losing everything in the Great Recession, embarks on a journey through the American West.", poster_url: "https://image.tmdb.org/t/p/original/mDbKjYJdO3J053J6p9Ba5pnWU6O.jpg", rating: 7)
Movie.create(title: "Barbie: Princess Adventure", overview: "Barbie discovers what it means to be a modern princess in this full-length, original musical when she switches places with her royal doppelganger.", poster_url: "https://image.tmdb.org/t/p/original/uoqKUXF7Z1AykTnchzL2xIl8MHi.jpg", rating: 7)

# Creating our Lists
List.create(name: "Beauty movie list")
List.create(name: "Emmas movie list")
List.create(name: "Pricilas movie list")

# Creating our Bookmarks (because they are referencing the movies and lists)
Bookmark.create(comment: "AMAZING MOVIE OMGGGG", movie: Movie.create, list: List.create)

puts "Seeds are planted 🌱 🌱 🌱"
