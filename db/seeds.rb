# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
# Guest login:
User.create!({
  email: 'guest@guest.com',
  username: 'guest',
  password: 'guestpass'
})

Serie.destroy_all
all_series = [
  # 0 NBA Finals 2016
  Serie.create!({
    title: 'The Walking Dead',
    description: 'Waking up in an empty hospital after weeks in a coma, County Sheriff Rick Grimes (Andrew Lincoln) finds himself utterly alone. The world as he knows it is gone, ravaged by a zombie epidemic.',
    year: 2014,
    image: File.open('app/assets/images/series/the-walking-dead.jpg')
  }),

  Serie.create!({
    title: 'Breaking Bad',
    description: 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family''s future.',
    year: 2008,
    image: File.open('app/assets/images/series/breaking-bad.jpg')
  }),
]

Genre.destroy_all

all_genres = [
  Genre.create!({name: "Thriller", series: [all_series[0], all_series[1]] }),

  Genre.create!({name: "Crime", series: [all_series[1]]})
]
