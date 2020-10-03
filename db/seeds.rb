# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Alican", password: "123456")
User.create(username: "Beril",  password: "123456")

music =      Category.create(name: "Music recommendations")
basketball = Category.create(name: "Basketball")
seinfeild =  Category.create(name: "Seinfeild Daily")

5.times do |n|
  user_id = User.find_by(username: "Alican").id

  # Basketball posts
  url = "https://watch.nba.com/"
  team = Faker::Sports::Basketball.team
  title = "Daily: #{team}"
  description = "Checkout yesterday's #{team} game!"
  post = Post.create(title:        title,
                     url:          url,
                     description:  description,
                     user_id:      user_id,
                     category_ids: [basketball.id])

  # Music posts
  url = "https://pitchfork.com/"
  album = Faker::Music.album
  title = "Must listen: #{album}"
  description = "Must listen album of the day."
  post = Post.create(title:        title,
                     url:          url,
                     description:  description,
                     user_id:      user_id,
                     category_ids: [music.id])

  # Seinfeild Posts
  url = "https://www.instagram.com/seinfeldtv/"
  title = "Daily quote from Seinfeild"
  description = Faker::TvShows::Seinfeld.quote
  post = Post.create(title:        title,
                     url:          url,
                     description:  description,
                     user_id:      user_id,
                     category_ids: [seinfeild.id])
end



