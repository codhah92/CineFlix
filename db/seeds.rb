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
  #0
  Genre.create!(name: "Thrillers"),
  #1
  Genre.create!(name: "Crime Shows"),
  #2
  Genre.create!(name: "Comedies"),
  #3
  Genre.create!(name: "Action and Adventure"),
  #4
  Genre.create!(name: "Mysteries"),
  #5
  Genre.create!(name: "Sports"),
  #6
  Genre.create!(name: "Documentaries"),
  #7
  Genre.create!(name: "Coding"),
  #8
  Genre.create!(name: "Horror Movies"),
  #9
  Genre.create!(name: "International Movies"),
  #10
  Genre.create!(name: "Music Videos"),
  #11
  Genre.create!(name: "TV Dramas"),
  #12
  Genre.create!(name: "Popular On Cineflix"),
  #13
  Genre.create!(name: "Food Adventures")
  #14
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
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-season-4.jpg'),
    genres: [all_genres[1], all_genres[0]]
  }),
#2 Conan O'Brien
  Serie.create!({
    title: 'Conan O''Brien',
    description: 'A late-night comedy show hosted by writer, comedian and performer Conan O''Brien',
    year: 2002,
    image: File.open('app/assets/images/series/conan-o-brien.jpg'),
    genres: [all_genres[2]]
  }),
#3 SuperGirl
  Serie.create!({
    title: 'SuperGirl',
    description: 'The adventures of Superman''s cousin in her own superhero career.',
    year: 2015,
    image: File.open('app/assets/images/series/supergirl.png'),
    genres: [all_genres[3], all_genres[1]]
  }),
#4 NBA Knicks Highlights
  Serie.create!({
    title: 'NBA Knicks Highlights',
    description: 'Watch the Knicks as they wheel and deal through the 2016-17 season!',
    year: 2016,
    image: File.open('app/assets/images/series/knicks.jpg'),
    genres: [all_genres[5]]
  }),
#5 Ruby
  Serie.create!({
    title: 'Ruby',
    description: 'Learn the basics of Ruby!',
    year: 2013,
    image: File.open('app/assets/images/series/ruby.jpg'),
    genres: [all_genres[7]]
  }),
#6 Javascript
  Serie.create!({
    title: 'Javascript',
    description: 'Learn to the basics of Javascript!',
    year: 2015,
    image: File.open('app/assets/images/series/javascript.png'),
    genres: [all_genres[7]]
  }),
#7 React
  Serie.create!({
    title: 'React',
    description: 'Improve your Javascript capabilities with React!',
    year: 2016,
    image: File.open('app/assets/images/series/react.png'),
    genres: [all_genres[7]]
  }),
#8 Redux
  Serie.create!({
    title: 'Redux',
    description: 'Mastered Javascript and React? Learn Redux!',
    year: 2016,
    image: File.open('app/assets/images/series/redux.png'),
    genres: [all_genres[7]]
  }),
#9 Rails
  Serie.create!({
    title: 'Ruby on Rails',
    description: 'Mastered Ruby? Learn to become a Ruby on Rails developer!',
    year: 2016,
    image: File.open('app/assets/images/series/rails.jpg'),
    genres: [all_genres[7]]
  }),
#10
  Serie.create!({
    title: 'Westworld',
    description: 'Mastered Ruby? Learn to become a Ruby on Rails developer!',
    year: 2016,
    image: File.open('app/assets/images/series/rails.jpg'),
    genres: [all_genres[12]]
  }),
]

Episode.destroy_all

all_episodes = [
#Walking Dead
  Episode.create!({
    title: 'Days Gone Bye',
    synopsis: 'Wounded in the line of duty, King County sheriff''s deputy, Rick Grimes, wakes from a coma to find the world infested by zombies. Alone and disoriented, he sets off in search of his wife and son.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-1.png'),
    video_url: 'GJRNHAJAcYg',
    episode_number: 1
  }),
  Episode.create!({
    title: 'Guts',
    synopsis: 'Rick unknowingly causes a group of survivors to be trapped by walkers. The group dynamic devolves from accusations to violence, as Rick must confront an enemy far more dangerous than the undead.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-2.jpg'),
    video_url: 'fYIqssyz-sI',
    episode_number: 2
  }),
  Episode.create!({
    title: 'Tell It to the Frogs',
    synopsis: 'Driving back to camp, Morales warns Rick about Merle''s brother, Daryl, who will be irate about his brother''s abandonment. Glenn arrives at camp first, and Shane and Dale chastise him about drawing walkers with the alarm. Jim disconnects the alarm just as the cube van approaches.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-3.png'),
    video_url: 'PRUO5fMR8xk',
    episode_number: 3
  }),
  Episode.create!({
    title: 'Vatos',
    synopsis: 'Rick''s mission to Atlanta is jeopardized when things go awry. Jim becomes unhinged in camp.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-4.jpg'),
    video_url: 'z5lQQZ7i15A',
    episode_number: 4
  }),
  Episode.create!({
    title: 'Wildfire',
    synopsis: 'Rick leads the group to the CDC after the attack. Jim must make a terrible life and death decision.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-5.jpg'),
    video_url: 'DJb7tK_VaaE',
    episode_number: 5
  }),
  Episode.create!({
    title: 'TS-19',
    synopsis: 'Driving back to camp, Morales warns Rick about Merle''s brother, Daryl, who will be irate about his brother''s abandonment. Glenn arrives at camp first, and Shane and Dale chastise him about drawing walkers with the alarm. Jim disconnects the alarm just as the cube van approaches.',
    serie_id: all_series[0].id,
    image: File.open('app/assets/images/series/walking_dead/walking-dead-episode-6.jpg'),
    video_url: 'cDFk39WJxCw',
    episode_number: 6
  }),

#Breaking Bad
  Episode.create!({
    title: 'Pilot',
    synopsis: 'Walter White, a 50-year-old chemistry teacher, secretly begins making crystallized methamphetamine to support his family after learning that he has terminal lung cancer',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-1.jpeg'),
    video_url: 'HhesaQXLuRY',
    episode_number: 1
  }),

  Episode.create!({
    title: 'Cat''s In the Bag',
    synopsis: 'Walt and Jesse try to dispose of the two bodies in the RV, which becomes increasingly complicated when one of them, Krazy-8, wakes up.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-2.jpeg'),
    video_url: 'T-E8rbHLSW8',
    episode_number: 2
  }),

  Episode.create!({
    title: 'Cat''s In the Bag',
    synopsis: 'Walt and Jesse try to dispose of the two bodies in the RV, which becomes increasingly complicated when one of them, Krazy-8, wakes up.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-2.jpeg'),
    video_url: 'T-E8rbHLSW8',
    episode_number: 3
  }),

  Episode.create!({
    title: 'Cat''s In the Bag',
    synopsis: 'Walt and Jesse try to dispose of the two bodies in the RV, which becomes increasingly complicated when one of them, Krazy-8, wakes up.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-2.jpeg'),
    video_url: 'T-E8rbHLSW8',
    episode_number: 4
  }),

  Episode.create!({
    title: 'Cat''s In the Bag',
    synopsis: 'Walt and Jesse try to dispose of the two bodies in the RV, which becomes increasingly complicated when one of them, Krazy-8, wakes up.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-2.jpeg'),
    video_url: 'T-E8rbHLSW8',
    episode_number: 5
  }),
]
