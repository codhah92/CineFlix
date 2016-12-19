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
  Genre.create!(name: "Food Adventures")
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
#10 Westworld
  Serie.create!({
    title: 'Westworld',
    description: 'The one-hour drama series Westworld is a dark odyssey about the dawn of artificial consciousness and the evolution of sin. Set at the intersection of the near future and the reimagined past, it explores a world in which every human appetite, no matter how noble or depraved, can be indulged.',
    year: 2016,
    image: File.open('app/assets/images/series/westworld/westworld-cover.jpg'),
    genres: [all_genres[11]]
  }),
#11 Criminal Minds
  Serie.create!({
    title: 'Criminal Minds',
    description: 'Based in Quantico, Virginia, the Behavioral Analysis Unit (BAU) is a subsection of the FBI. Called in by local police departments to assist in solving crimes of a serial and/or extremely violent nature where the perpetrator is unknown (referred to by the Unit as the unknown subject or unsub for short), the BAU uses the controversial scientific art of profiling to track and apprehend the unsub. ',
    year: 2005,
    image: File.open('app/assets/images/series/criminal_minds/criminal-minds-cover.jpg'),
    genres: [all_genres[1], all_genres[4]]
  }),
#12 Dexter
  Serie.create!({
    title: 'Dexter',
    description: 'Dexter Morgan is a Forensics Expert, a loyal brother, boyfriend, and friend. That''s what he seems to be, but that''s not what he really is. Dexter Morgan is a Serial Killer that hunts the bad.',
    year: 2006,
    image: File.open('app/assets/images/series/dexter/dexter-cover.jpg'),
    genres: [all_genres[1]]
  }),
#13 Sherlock
  Serie.create!({
    title: 'Sherlock',
    description: 'A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.',
    year: 2010,
    image: File.open('app/assets/images/series/sherlock/sherlock-cover.jpg'),
    genres: [all_genres[4], all_genres[1]]
  }),
#14 Homeland
  Serie.create!({
    title: 'Homeland',
    description: 'A bipolar CIA operative becomes convinced a prisoner of war has been turned by al-Qaeda and is planning to carry out a terrorist attack on American soil.',
    year: 2011,
    image: File.open('app/assets/images/series/homeland/homeland-cover.jpg'),
    genres: [all_genres[4], all_genres[0]]
  }),
#15 American Crime
  Serie.create!({
    title: 'American Crime',
    description: 'The lives of the participants in a trial with significant racial motives are forever changed during the legal process.',
    year: 2015,
    image: File.open('app/assets/images/series/american_crime/american-crime-cover.jpg'),
    genres: [all_genres[1]]
  }),
#16 Kevin Hart
  Serie.create!({
    title: 'Kevin Hart',
    description: 'Comedian and actor Kevin Hart came to fame as a stand-up comic. He has appeared in several films and has three albums, including the 2011 hit Laugh at My Pain.',
    year: 2010,
    image: File.open('app/assets/images/series/kevin_hart/kevin-hart-cover.png'),
    genres: [all_genres[2]]
  }),
#17 Jay Pharoah
  Serie.create!({
    title: 'Jay Pharoah',
    description: 'A comedic wizard, watch Jay Pharoah as he creates spot-on impressions of celebrities around the world.',
    year: 2011,
    image: File.open('app/assets/images/series/jay_pharoah/jay-pharoah-cover.jpg'),
    genres: [all_genres[2]]
  }),
#18 Jimmy Fallon Tonight Show
  Serie.create!({
    title: 'The Tonight Show',
    description: 'Emmy Award and Grammy Award winner Jimmy Fallon brought NBC''s "The Tonight Show" back to its New York origins when he launched "The Tonight Show Starring Jimmy Fallon" from Rockefeller Center. Fallon puts his own stamp on the storied NBC late-night franchise with his unique comedic wit, on-point pop culture awareness, welcoming style and impeccable taste in music with the award-winning house band, The Roots.',
    year: 2014,
    image: File.open('app/assets/images/series/the_tonight_show/jimmy-fallon-cover.jpg'),
    genres: [all_genres[2]]
  }),
#19 Last Week Tonight with John Oliver
  Serie.create!({
    title: 'Last Week Tonight',
    description: 'An American late-night talk and news satire television program hosted by comedian John Oliver',
    year: 2014,
    image: File.open('app/assets/images/series/john_oliver/john-oliver.jpg'),
    genres: [all_genres[2]]
  }),
#20 SNL
  Serie.create!({
    title: 'Saturday Night Live',
    description: 'The famous guest host stars in parodies and sketches created by the cast of this witty show.',
    year: 2002,
    image: File.open('app/assets/images/series/snl/snl-cover.jpg'),
    genres: [all_genres[2]]
  }),
#21 The Daily Show
  Serie.create!({
    title: 'The Daily Show',
    description: 'Trevor Noah takes on the very tall task of replacing longtime host Jon Stewart on Comedy Central''s Emmy- and Peabody Award-winning talk/news satire program.',
    year: 2015,
    image: File.open('app/assets/images/series/the_daily_show/the-daily-show-cover.jpg'),
    genres: [all_genres[2]]
  }),
#22 Node
  Serie.create!({
    title: 'Node.JS',
    description: 'Learn Node!',
    year: 2015,
    image: File.open('app/assets/images/series/node/node-cover.png'),
    genres: [all_genres[7]]
  }),
#23 24
  Serie.create!({
    title: '24',
    description: 'Jack Bauer, Director of Field Ops for the Counter-Terrorist Unit of Los Angeles, races against the clock to subvert terrorist plots and save his nation from ultimate disaster.',
    year: 2001,
    image: File.open('app/assets/images/series/24/24-cover.jpg'),
    genres: [all_genres[3]]
  }),
#24 Stranger Things
  Serie.create!({
    title: 'Stranger Things',
    description: 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.',
    year: 2016,
    image: File.open('app/assets/images/series/stranger_things/stranger-things-cover.jpg'),
    genres: [all_genres[0], all_genres[4]]
  }),
#25 Arrow
  Serie.create!({
    title: 'Arrow',
    description: 'Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.',
    year: 2012,
    image: File.open('app/assets/images/series/arrow/arrow-cover.jpg'),
    genres: [all_genres[3]]
  }),
#26 Prison Break
  Serie.create!({
    title: 'Prison Break',
    description: 'Due to a political conspiracy, an innocent man is sent to death row and his only hope is his brother, who makes it his mission to deliberately get himself sent to the same prison in order to break the both of them out, from the inside.',
    year: 2005,
    image: File.open('app/assets/images/series/prison_break/prison-break-cover.jpg'),
    genres: [all_genres[3], all_genres[1], all_genres[0]]
  }),
#27 Supernatural
  Serie.create!({
    title: 'Supernatural',
    description: 'Two brothers follow their father''s footsteps as "hunters" fighting evil supernatural beings of many kinds including monsters, demons, and gods that roam the earth.',
    year: 2005,
    image: File.open('app/assets/images/series/supernatural/supernatural-cover.png'),
    genres: [all_genres[0], all_genres[3], all_genres[4]]
  }),
#28 Game of Thrones
  Serie.create!({
    title: 'Game of Thrones',
    description: 'Nine noble families fight for control over the mythical lands of Westeros. Meanwhile, a forgotten race, hell-bent on destruction, returns after being dormant for thousands of years.',
    year: 2011,
    image: File.open('app/assets/images/series/game_of_thrones/game-of-thrones-cover.jpg'),
    genres: [all_genres[3]]
  }),
#29 Lost
  Serie.create!({
    title: 'Lost',
    description: 'The survivors of a plane crash are forced to work together in order to survive on a seemingly deserted tropical island.',
    year: 2011,
    image: File.open('app/assets/images/series/lost/lost-cover.jpg'),
    genres: [all_genres[4]]
  }),
#30 Shaqtin A Fool
  Serie.create!({
    title: 'Shaqtin A Fool',
    description: 'A hilarious segment that covers the most humorous and uncommon basketball plays that have occurred during NBA games in the past week. Hosted by Shaquille O''Neal',
    year: 2016,
    image: File.open('app/assets/images/series/shaqtin/shaqtin-cover.jpg'),
    genres: [all_genres[5]]
  }),
#31 Premier League Highlights
  Serie.create!({
    title: 'Barclays Premier League',
    description: 'Highlights from the 2016-17 Premier League',
    year: 2016,
    image: File.open('app/assets/images/series/premier_league/premier-league-cover.jpg'),
    genres: [all_genres[5]]
  }),
#32 NFL Highlights
  Serie.create!({
    title: 'NFL',
    description: 'Highlights from the 2016-17 National Football League',
    year: 2016,
    image: File.open('app/assets/images/series/nfl/nfl-cover.jpg'),
    genres: [all_genres[5]]
  }),
#33 PGA Tour
  Serie.create!({
    title: 'PGA Tour',
    description: 'Highlights from the 2016-17 Professional Golf Association',
    year: 2016,
    image: File.open('app/assets/images/series/golf/pga-cover.jpg'),
    genres: [all_genres[5]]
  }),
#34 Rio Olympics
  Serie.create!({
    title: 'Rio Olympics 2016',
    description: 'Highlights from the 2016 Rio Olympics',
    year: 2016,
    image: File.open('app/assets/images/series/rio/rio-cover.jpg'),
    genres: [all_genres[5]]
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
    title: '…And the Bag''s in the River',
    synopsis: 'Walt and Jesse clean up last week''s mess and Walt must face holding up his end of the deal. Walt''s DEA agent brother-in-law, Hank (Dean Norris), warns Walt, Jr. (RJ Mitte) about the dangers of drugs.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-3.jpeg'),
    video_url: '9jWlHk1LNXg',
    episode_number: 3
  }),

  Episode.create!({
    title: 'Cancer Man',
    synopsis: 'Hank starts looking for the new drug kingpin. Walter reveals that he has cancer at a family barbecue. Jesse goes to visit his family.',
    serie_id: all_series[1].id,
    image: File.open('app/assets/images/series/breaking_bad/breaking-bad-episode-4.jpeg'),
    video_url: 'lrcqbavlbyQ',
    episode_number: 4
  }),
#Westworld
  Episode.create!({
    title: 'The Original',
    synopsis: 'Dolores Abernathy, a blood-spattered young host, sits naked in a diagnostic room. A voice interviews her, and Dolores flatly describes her world as she wakes up on her family’s ranch and begins her day.',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-1.jpg'),
    video_url: 'AZBDXqDBo_c&index=5&list=PLJl93FMVnn7Abyc2G0hq3W175369JuJO6',
    episode_number: 1
  }),

  Episode.create!({
    title: 'Chestnut',
    synopsis: 'Dolores is roused in the middle of the night by a strange voice. “Do you remember?” the voice asks, prompting Dolores to walk outside.',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-2.jpg'),
    video_url: 'pXKjjg4R-Is&list=PLJl93FMVnn7Abyc2G0hq3W175369JuJO6&index=8',
    episode_number: 2
  }),

  Episode.create!({
    title: 'The Stray',
    synopsis: 'Bernard begins a diagnostic with Dolores, who assures him she has not told anyone of their conversations. He brings her a gift, Alice in Wonderland, asking her if the passages in the book remind her of anything. “But if I’m not the same,” she reads, “the next question is, who in the world am I?”',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-3.jpg'),
    video_url: '52ic4_2lkWk&index=9&list=PLJl93FMVnn7Abyc2G0hq3W175369JuJO6',
    episode_number: 3
  }),

  Episode.create!({
    title: 'Dissonance Theory',
    synopsis: 'In a diagnostic session, Bernard asks Dolores why she ran from the ranch. She explains that even though her family is gone, she holds on to the pain of their loss. “I feel spaces opening up inside me,” she continues, “like a building with rooms I’ve never explored.” Bernard tells Dolores she can be free if she can find the center of the maze. Dolores wakes up at William and Logan’s campsite, gun in her hand.',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-4.jpg'),
    video_url: 'b6NpfamnhYU&list=PLJl93FMVnn7Abyc2G0hq3W175369JuJO6&index=10',
    episode_number: 4
  }),

  Episode.create!({
    title: 'Contrapasso',
    synopsis: 'Dr. Ford tells Old Bill the story of his childhood greyhound; when it was let off-leash one day at the park, it killed a cat, mistaking it for the rabbit plush used in training races. “That dog had spent its whole life trying to catch that thing,” Ford explains. “Now it had no idea what to do.”',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-5.jpg'),
    video_url: 'qPCwi92Jofw&index=12&list=PLJl93FMVnn7Abyc2G0hq3W175369JuJO6',
    episode_number: 5
  })

]
