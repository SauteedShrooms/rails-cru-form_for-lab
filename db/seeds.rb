# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Artist.destroy_all
Genre.destroy_all

nick_mark = Artist.create(name: "Nick & Mark", bio: "Sweaty Singers")

classics = Genre.create(name: "Classics")


Song.create(name: 'hold me', artist: nick_mark, genre: classics)