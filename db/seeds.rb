# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create!({
  email: 'guest@guest.com',
  username: 'guest',
  password: 'guestpass'
})

Genre.destroy_all

all_genres = [
  Genre.create!(name: "Thriller"),

  Genre.create!(name: "Crime")
]

Serie.destroy_all
all_series = [
#0 Walking Dead
  Serie.create!({
    title: 'The Walking Dead',
    description: 'Waking up in an empty hospital after weeks in a coma, County Sheriff Rick Grimes (Andrew Lincoln) finds himself utterly alone. The world as he knows it is gone, ravaged by a zombie epidemic.',
    year: 2014,
    image: File.open('app/assets/images/series/the-walking-dead.jpg'),
    genres: [all_genres[0]]
  }),
#1 Breaking Bad
  Serie.create!({
    title: 'Breaking Bad',
    description: 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family''s future.',
    year: 2008,
    image: File.open('app/assets/images/series/breaking-bad.jpg'),
    genres: [all_genres[1], all_genres[0]]
  }),
]

Episode.destroy_all

all_episodes = [

  Episode.create!({
    title: 'Days Gone Bye',
    synopsis: 'Wounded in the line of duty, King County sheriff''s deputy, Rick Grimes, wakes from a coma to find the world infested by zombies. Alone and disoriented, he sets off in search of his wife and son.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-1.jpeg'),
    video_url: 'ewaf',
    episode_number: 1
  }),

  Episode.create!({
    title: 'Tell It to the Frogs',
    synopsis: 'Driving back to camp, Morales warns Rick about Merle''s brother, Daryl, who will be irate about his brother''s abandonment. Glenn arrives at camp first, and Shane and Dale chastise him about drawing walkers with the alarm. Jim disconnects the alarm just as the cube van approaches.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-2.jpeg'),
    video_url: 'awef',
    episode_number: 2
  }),

  Episode.create!({
    title: 'Pilot',
    synopsis: 'Walter White, a 50-year-old chemistry teacher, secretly begins making crystallized methamphetamine to support his family after learning that he has terminal lung cancer',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-1.png'),
    video_url: 'awefaw',
    episode_number: 1
  }),

  Episode.create!({
    title: 'Cat''s In the Bag',
    synopsis: 'Walt and Jesse try to dispose of the two bodies in the RV, which becomes increasingly complicated when one of them, Krazy-8, wakes up.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-2.png'),
    video_url: 'aewfawef',
    episode_number: 2
  })
]
