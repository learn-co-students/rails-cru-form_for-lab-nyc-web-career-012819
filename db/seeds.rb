# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create(name: "Sufjan Stevens", bio: "I am the best")
Artist.create(name: "Taylor Kelly", bio: "I am also great")
Artist.create(name: "Tom Yorke", bio: "I, too, am wonderful")

Genre.create(name: "Indie folk")
Genre.create(name: "Jazz")
Genre.create(name: "Alternative rock")

Song.create(name: "Mercury", artist_id: 1, genre_id: 1)
Song.create(name: "Baby blues", artist_id: 2, genre_id: 2)
Song.create(name: "Eraser", artist_id: 3, genre_id: 3)
