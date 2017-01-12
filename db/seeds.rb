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

all_users = [];

20.times do
  email = Faker::Internet.free_email
  username = Faker::Internet.user_name
  email = Faker::Internet.free_email while (User.find_by(email: email))
  user = User.create!({
    email: email,
    username: username,
    password: '123456'
  })

  all_users.push(user)
end

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
    image: File.open('app/assets/images/series/conan/conan-o-brien.jpg'),
    genres: [all_genres[2]]
  }),
#3 SuperGirl
  Serie.create!({
    title: 'SuperGirl',
    description: 'The adventures of Superman''s cousin in her own superhero career.',
    year: 2015,
    image: File.open('app/assets/images/series/supergirl/supergirl.png'),
    genres: [all_genres[3], all_genres[1]]
  }),
#4 NBA Knicks Highlights
  Serie.create!({
    title: 'NBA Knicks Highlights',
    description: 'Watch the Knicks as they wheel and deal through the 2016-17 season!',
    year: 2016,
    image: File.open('app/assets/images/series/knicks/knicks.jpg'),
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
    genres: [all_genres[0], all_genres[4]]
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
# 35 Vice Documentaries
  Serie.create!({
    title: 'Vice Documentaries',
    description: 'A documentary TV series created and hosted by Shane Smith of Vice magazine. Produced by Bill Maher, it uses CNN journalist Fareed Zakaria as a consultant, and covers topics using an immersionist style of documentary filmmaking.',
    year: 2013,
    image: File.open('app/assets/images/series/vice/vice-cover.jpg'),
    genres: [all_genres[6]]
  }),
# 36 4K Videos
  Serie.create!({
    title: '4K Videos',
    description: 'A series of beautiful, 4K videos with soothing background music',
    year: 2016,
    image: File.open('app/assets/images/series/4K/4K-cover.jpg'),
    genres: [all_genres[6]]
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
    video_url: 'AZBDXqDBo_c',
    episode_number: 1
  }),

  Episode.create!({
    title: 'Chestnut',
    synopsis: 'Dolores is roused in the middle of the night by a strange voice. “Do you remember?” the voice asks, prompting Dolores to walk outside.',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-2.jpg'),
    video_url: 'pXKjjg4R-Is',
    episode_number: 2
  }),

  Episode.create!({
    title: 'The Stray',
    synopsis: 'Bernard begins a diagnostic with Dolores, who assures him she has not told anyone of their conversations. He brings her a gift, Alice in Wonderland, asking her if the passages in the book remind her of anything. “But if I’m not the same,” she reads, “the next question is, who in the world am I?”',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-3.jpg'),
    video_url: '52ic4_2lkWk',
    episode_number: 3
  }),

  Episode.create!({
    title: 'Dissonance Theory',
    synopsis: 'In a diagnostic session, Bernard asks Dolores why she ran from the ranch. She explains that even though her family is gone, she holds on to the pain of their loss. “I feel spaces opening up inside me,” she continues, “like a building with rooms I’ve never explored.” Bernard tells Dolores she can be free if she can find the center of the maze. Dolores wakes up at William and Logan’s campsite, gun in her hand.',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-4.jpg'),
    video_url: 'b6NpfamnhYU',
    episode_number: 4
  }),

  Episode.create!({
    title: 'Contrapasso',
    synopsis: 'Dr. Ford tells Old Bill the story of his childhood greyhound; when it was let off-leash one day at the park, it killed a cat, mistaking it for the rabbit plush used in training races. “That dog had spent its whole life trying to catch that thing,” Ford explains. “Now it had no idea what to do.”',
    serie_id: all_series[10].id,
    image: File.open('app/assets/images/series/westworld/westworld-episode-5.jpg'),
    video_url: 'qPCwi92Jofw',
    episode_number: 5
  }),
# Conan
  Episode.create!({
    title: 'Clueless Gamer: "Battlefield 1" With Terry Crews',
    synopsis: 'The WWI first person shooter game is so intense, Conan and Terry need some fuzzy bunnies to help calm their nerves.',
    serie_id: all_series[2].id,
    image: File.open('app/assets/images/series/conan/conan-terry.jpg'),
    video_url: 'jLhjsPjR-xk',
    episode_number: 1
  }),
# Supergirl
  Episode.create!({
    title: 'The Adventures of Supergirl',
    synopsis: 'The premiere picks up right where the finale left off: Kara and Martian Manhunter fly to the crash site and find Mon-El (Chris Wood) peacefully asleep in the pod.',
    serie_id: all_series[3].id,
    image: File.open('app/assets/images/series/supergirl/supergirl-episode-1.jpg'),
    video_url: '7vGuQ17HkTc',
    episode_number: 1
  }),
# Knicks Highlights
  Episode.create!({
    title: 'New York Knicks vs. LA Lakers',
    synopsis: 'The New York Knicks take on the LA Lakers at the Staples Center',
    serie_id: all_series[4].id,
    image: File.open('app/assets/images/series/knicks/knicks-episode-1.jpg'),
    video_url: 'xxnSoXJHjqA',
    episode_number: 1
  }),
# Ruby
  Episode.create!({
    title: 'Ruby - An Overview',
    synopsis: 'A complete tutorial on Ruby.',
    serie_id: all_series[5].id,
    image: File.open('app/assets/images/series/ruby.jpg'),
    video_url: 'Dji9ALCgfpM',
    episode_number: 1
  }),
# Javascript
  Episode.create!({
    title: 'Javascript - An Overview',
    synopsis: 'A complete tutorial on Javascript.',
    serie_id: all_series[6].id,
    image: File.open('app/assets/images/series/javascript.png'),
    video_url: 'fju9ii8YsGs',
    episode_number: 1
  }),
# React
  Episode.create!({
    title: 'React - Introduction & Workspace Setup',
    synopsis: 'An introduction to React and a tutorial on setting it up!',
    serie_id: all_series[7].id,
    image: File.open('app/assets/images/series/react.png'),
    video_url: 'MhkGQAoc7bc',
    episode_number: 1
  }),
# Redux
  Episode.create!({
    title: 'Redux - How Redux Works',
    synopsis: 'An introduction to Redux and why it is useful.',
    serie_id: all_series[8].id,
    image: File.open('app/assets/images/series/redux.png'),
    video_url: '1w-oQ-i1XB8',
    episode_number: 1
  }),
# Rails
  Episode.create!({
    title: 'Ruby on Rails - Part One',
    synopsis: 'Part one of a Ruby On Rails series',
    serie_id: all_series[9].id,
    image: File.open('app/assets/images/series/rails.jpg'),
    video_url: 'GY7Ps8fqGdc',
    episode_number: 1
  }),
# Criminal Minds
  Episode.create!({
    title: 'The Crimson King',
    synopsis: 'Agent Luke Alvez (Adam Rodriguez) joins the BAU team, which is tasked with capturing a killer who escaped prison with 13 other convicts at the end of last season.',
    serie_id: all_series[11].id,
    image: File.open('app/assets/images/series/criminal_minds/criminal-minds-episode-1.png'),
    video_url: 'XGTpYJ6jswQ',
    episode_number: 1
  }),
# Dexter
  Episode.create!({
    title: 'Pilot',
    synopsis: 'By day he is a blood spatter analyst who works for the Homicide Department of the Miami Metro Police.',
    serie_id: all_series[12].id,
    image: File.open('app/assets/images/series/dexter/dexter-episode-1.jpg'),
    video_url: 'x9aGJeL_BRc',
    episode_number: 1
  }),
# Sherlock
  Episode.create!({
    title: 'A Study in Pink',
    synopsis: 'War vet Dr. John Watson returns to London in need of a place to stay. He meets Sherlock Holmes, a consulting detective, and the two soon find themselves digging into a string of serial "suicides."',
    serie_id: all_series[13].id,
    image: File.open('app/assets/images/series/sherlock/sherlock-episode-1.jpg'),
    video_url: 'JP5Dr63TbSU',
    episode_number: 1
  }),
# Homeland
  Episode.create!({
    title: 'Pilot',
    synopsis: 'A CIA case officer (Claire Danes) becomes suspicious that a Marine Sergeant rescued from captivity has been turned into a sleeper agent by Al Qaeda. ',
    serie_id: all_series[14].id,
    image: File.open('app/assets/images/series/homeland/homeland-episode-1.jpg'),
    video_url: 'N-1Jz8ZJjpA',
    episode_number: 1
  }),
# American Crime
  Episode.create!({
    title: 'Episode One',
    synopsis: 'Social injustice stirs up tensions in a California city after a shocking crime.',
    serie_id: all_series[15].id,
    image: File.open('app/assets/images/series/american_crime/american-crime-episode-1.jpg'),
    video_url: 'Uu2P7ABRLRw',
    episode_number: 1
  }),
# Kevin Hart
  Episode.create!({
    title: 'Let Me Explain',
    synopsis: 'Kevin Hart Let Me Explain 2013 | Kevin Hart Stand Up Comedy Show',
    serie_id: all_series[16].id,
    image: File.open('app/assets/images/series/kevin_hart/kevin-hart-episode-1.jpg'),
    video_url: 'kB7Pg_D89I0',
    episode_number: 1
  }),
# Jay Pharoah
  Episode.create!({
    title: 'Jay Pharoah Impersonates Jay Z, Kendrick Lamar, Will Smith + More',
    synopsis: 'Jay Pharoah impersonates celebrities Jay-Z, Kendrick Lamar, Will Smith and others on Radio Malcolm.',
    serie_id: all_series[17].id,
    image: File.open('app/assets/images/series/jay_pharoah/jay-pharoah-episode-1.jpg'),
    video_url: '-BrWqNxXj40',
    episode_number: 1
  }),
# Jimmy Fallon
  Episode.create!({
    title: 'Singing Whisper Challenge with Emma Stone',
    synopsis: 'Jimmy and Emma Stone take turns guessing random song titles and lyrics while wearing noise-canceling headphones.',
    serie_id: all_series[18].id,
    image: File.open('app/assets/images/series/the_tonight_show/the-tonight-show-episode-1.jpg'),
    video_url: 'zzWWmG3CUWc',
    episode_number: 1
  }),
# John Oliver
  Episode.create!({
    title: 'Pumpkin Spice (Web Exclusive): Last Week Tonight with John Oliver (HBO)',
    synopsis: 'John Oliver investigates pumpkin spice lattes. Well, he doesn''t really investigate. He says things about it, though!',
    serie_id: all_series[19].id,
    image: File.open('app/assets/images/series/john_oliver/john-oliver-episode-1.jpg'),
    video_url: 'DeQqe0oj5Ls',
    episode_number: 1
  }),
# SNL
  Episode.create!({
    title: 'A Thanksgiving Miracle - SNL',
    synopsis: 'There''s only one thing that can keep a family (Beck Bennett, Jay Pharoah, Cecily Strong, Aidy Bryant, Matthew McConaughey, Kate McKinnon, Vanessa Bayer) from fighting at Thanksgiving: Adele.',
    serie_id: all_series[20].id,
    image: File.open('app/assets/images/series/snl/snl-episode-1.jpg'),
    video_url: 'e2zyjbH9zzA',
    episode_number: 1
  }),
# The Daily Show
  Episode.create!({
    title: 'The Daily Show with Trevor Noah - Ben Carson Blames the Victims',
    synopsis: 'Presidential hopeful Ben Carson doubles down on condemnatory remarks he made about victims of a mass shooting at an Oregon community college.',
    serie_id: all_series[21].id,
    image: File.open('app/assets/images/series/the_daily_show/the-daily-show-episode-1.jpg'),
    video_url: 'oe06jLcpjYI',
    episode_number: 1
  }),
# Node.js
  Episode.create!({
    title: 'What is Node.js Exactly? - a beginners introduction to Nodejs',
    synopsis: 'What exactly is node.js? Is it a command-line tool, a language, the same thing as Ruby on Rails, a cure for cancer?',
    serie_id: all_series[22].id,
    image: File.open('app/assets/images/series/node/node-cover.png'),
    video_url: 'pU9Q6oiQNd0',
    episode_number: 1
  }),
# 24
  Episode.create!({
    title: 'Midnight - 1:00 A.M.',
    synopsis: 'Jack Bauer comes out of hiding in London to head off a massive terrorist attack ',
    serie_id: all_series[23].id,
    image: File.open('app/assets/images/series/24/24-episode-1.jpg'),
    video_url: 'Do_LT2xbFXo',
    episode_number: 1
  }),
# Stranger Things
  Episode.create!({
    title: 'Chapter One: The Vanishing of Will Byers',
    synopsis: 'In a small Indiana town, the disappearance of a young boy sparks a police investigation.',
    serie_id: all_series[24].id,
    image: File.open('app/assets/images/series/stranger_things/stranger-things-episode-1.jpg'),
    video_url: '5kRo6Yg091o',
    episode_number: 1
  }),
# Arrow
  Episode.create!({
    title: 'Pilot',
    synopsis: 'Billionaire playboy Oliver Queen is discovered on a remote Pacific island, having been shipwrecked for the previous five years. Oliver is welcomed back home to Starling City by his mother Moira, stepfather Walter Steele, younger sister Thea, and best friend Tommy Merlyn. They can sense that Oliver has changed, and try to question him about his time on the island after viewing the numerous scars that have riddled his body.',
    serie_id: all_series[25].id,
    image: File.open('app/assets/images/series/arrow/arrow-episode-1.jpg'),
    video_url: 'ofzPONG8hDU',
    episode_number: 1
  }),
# Prison Break
  Episode.create!({
    title: 'Pilot',
    synopsis: 'Burrows'' brother Michael Scofield, a structural engineer, plans to get himself incarcerated so he can save his brother from his death sentence, by using his new body tattoo.',
    serie_id: all_series[26].id,
    image: File.open('app/assets/images/series/prison_break/prison-break-episode-1.jpg'),
    video_url: 'AL9zLctDJaU',
    episode_number: 1
  }),
# Supernatural
  Episode.create!({
    title: 'Pilot',
    synopsis: 'Sam and Dean Winchester were trained by their father to hunt the creatures of the supernatural. Now, their father has mysteriously disappeared while hunting the demon that killed their mother, 22 years ago.',
    serie_id: all_series[27].id,
    image: File.open('app/assets/images/series/supernatural/supernatural-episode-1.jpg'),
    video_url: '8AyCXsVrLhY',
    episode_number: 1
  }),
# Game of Thrones
  Episode.create!({
    title: 'Winter Is Coming',
    synopsis: 'Jon Arryn, the Hand of the King, is dead. King Robert Baratheon plans to ask his oldest friend, Eddard Stark, to take Jon''s place. Across the sea, Viserys Targaryen plans to wed his sister to a nomadic warlord in exchange for an army.',
    serie_id: all_series[28].id,
    image: File.open('app/assets/images/series/game_of_thrones/game-of-thrones-episode-1.jpg'),
    video_url: 'iGp_N3Ir7Do&t=7s',
    episode_number: 1
  }),
# Lost
  Episode.create!({
    title: 'Pilot',
    synopsis: 'Forty-eight survivors of an airline flight originating from Australia, bound for the U.S., which crash-lands onto an unknown island 1000 miles off course, struggle to figure out a way to survive while trying to find a way to be rescued.',
    serie_id: all_series[29].id,
    image: File.open('app/assets/images/series/lost/lost-episode-1.png'),
    video_url: 'KTu8iDynwNc',
    episode_number: 1
  }),
# Shaqtin A Fool
  Episode.create!({
    title: 'Shaqtin'' A Fool | December 8, 2016 | 2016-17 NBA Season',
    synopsis: 'Shaqtin'' A Fool highlights from December 8th, 2016.',
    serie_id: all_series[30].id,
    image: File.open('app/assets/images/series/shaqtin/shaqtin-episode-1.jpg'),
    video_url: 'vJMIGI7FZtY',
    episode_number: 1
  }),
# Premier League Highlights
  Episode.create!({
    title: 'Barcelona vs Malaga 3-0 Highlights',
    synopsis: 'Barcelona vs. Malaga',
    serie_id: all_series[31].id,
    image: File.open('app/assets/images/series/premier_league/premier-league-episode-1.jpg'),
    video_url: 'rFqLo39ja_Y',
    episode_number: 1
  }),
# 4K Videos
  Episode.create!({
    title: 'Alchemy',
    synopsis: 'Alchemy is a short film about transformation. In nature, everything is constantly changing: the earth, the sky, the stars, and all living things. Spring is followed by summer, fall and winter. Water turns into clouds, rain and ice. Over time, rivers are created, canyons carved, and mountains formed. All of these elements, mixed together, create the magic of nature''s alchemy.',
    serie_id: all_series[36].id,
    image: File.open('app/assets/images/series/4K/4K-episode-1.png'),
    video_url: 'eYqIEBpbRhg',
    episode_number: 1
  }),
  Episode.create!({
    title: 'Ink Drops',
    synopsis: 'Ink in action',
    serie_id: all_series[36].id,
    image: File.open('app/assets/images/series/4K/4K-episode-2.jpg'),
    video_url: 'k_okcNVZqqI',
    episode_number: 2
  }),
  Episode.create!({
    title: 'Postcard from Innsbruck',
    synopsis: 'Filmed in Innsbruck, Austria on the Canon 1DC in 4K',
    serie_id: all_series[36].id,
    image: File.open('app/assets/images/series/4K/4K-episode-3.jpg'),
    video_url: 'EbvVpvXwlKU',
    episode_number: 3
  }),
  Episode.create!({
    title: 'Australia',
    synopsis: 'Filming in Australia. Observe the natural beauty of an amazing place.',
    serie_id: all_series[36].id,
    image: File.open('app/assets/images/series/4K/4K-episode-4.jpg'),
    video_url: 'tJGnHB3rtMU',
    episode_number: 4
  }),
  Episode.create!({
    title: 'Wildlife',
    synopsis: 'Majestic animals in their natural habitats',
    serie_id: all_series[36].id,
    image: File.open('app/assets/images/series/4K/4K-episode-5.jpg'),
    video_url: 'xDMP3i36naA',
    episode_number: 5
  }),
  Episode.create!({
    title: 'The Nepalese Honey That Makes People Hallucinate',
    synopsis: 'Nepal’s Gurung people live mostly in small villages in the vast Annapurna mountain ranges. In this remote region, they practice an ancient tradition of honey hunting where they descend towering cliffs on handmade ladders, to harvest honey nestled under jagged overhangs. ',
    serie_id: all_series[35].id,
    image: File.open('app/assets/images/series/vice/vice-episode-1.jpg'),
    video_url: 'wDOvmhqvIA8',
    episode_number: 1
  }),
  Episode.create!({
    title: 'Top 10 Divisional Playoff Moments of All Time | NFL',
    synopsis: 'We count down the top 10 moments in NFL Divisional Playoff history!',
    serie_id: all_series[32].id,
    image: File.open('app/assets/images/series/nfl/nfl-episode-1.jpg'),
    video_url: 'CcDovivXSGE',
    episode_number: 1
  }),
  Episode.create!({
    title: 'Highlights | Race continues for the FedExCup at the TOUR Championship',
    synopsis: 'In the third round of the 2016 TOUR Championship, Dustin Johnson stumbles down the stretch and settles into a tie for the lead with Kevin Chappell entering Championship Sunday.',
    serie_id: all_series[33].id,
    image: File.open('app/assets/images/series/golf/golf-episode-1.jpg'),
    video_url: '8i5zpqSi4Ik',
    episode_number: 1
  }),
  Episode.create!({
    title: 'Rio Replay: Men''s High Jump Final',
    synopsis: 'Canada''s Derek Drouin wins gold in men''s high jump in Rio 2016.',
    serie_id: all_series[34].id,
    image: File.open('app/assets/images/series/rio/rio-episode-1.jpg'),
    video_url: 'zW87tVnDKIU',
    episode_number: 1
  }),
]

reviews = [];

random_reviews = [
  "Great movie!",
  "I'm interested in this movie.",
  "Why am I laughing so hard?",
  "I remember the good old days...",
  "Having a blast watching this while eating my cheetos.",
  "Someday I'll be a superhero too.",
  "LOL!",
  "LMAO!",
  "Dude... what am I watching?",
  "Glad that I got through this without shedding a tear.",
  "When the world ends, I'm going to make sure to hide in a bunker.",
  "lovely~~~~ :)",
  "nostalgia at its finest",
  "this was definitely the main character's finest hour",
  "dopest movie on the planet!",
  "IT WAS LITTTTTT",
  "good old times",
  "When did this movie first come out?",
  "stressed...",
  "im 18 and i love cartoons - give me some of those saturday morning cartoons",
  "I feel like a kid again.",
  "giddy up horsey!",
  "This needs a sequel ASAP",
  "My mind is running with the rap lyrics from Tupac's Changes",
  "HILARIOUS. OMG.",
  "CineFlix is the greatest site in the nation",
  "You guys at CineFlix better work harder... Netflix is catching up!",
  "This stuff cracks me up",
  "Lame brains",
  "I am writing this without any thoughts going on in my head.",
  "Actually, writing these reviews are making me quite nostalgic",
  "Goodness, I laughed and my breath stinks.",
  "Ballin on the streets every day. Go hard or go home.",
  "I wish I worked harder when I was younger...",
  "I wish I started programming at an earlier age...",
  "Thank you so much for CINEFLIX!",
  "I'm getting sleepy.",
  "YAWN",
  "My father always told me to believe in myself. Today, I do.",
  "53 years old here and I cannot get over how beautiful movies have become. Oh joy.",
  "WOOT",
  "The ChainSmokers told me that we ain't never gettin older. I feel older everyday.",
  "Buzzzzzzz lightyear please come in star command.",
  "Duck duck goose was my favorite game back in the day.",
  "When I grow up, I want to become like SuperGirl. NOT Superman.",
  "I LOVE WENDYS MORE THAN MCDONALDS.",
  "Some day I am going to meet Kobe and he will tell me that I am the best baller he has ever seen.",
  "Do people even read these reviews?",
  "Shake shack or In-N-Out? The great debate.",
  "Hassan told me to write this.",
  "My life is brilliant, my love is pure. I saw an angel of that I am definitely sure.",
  "wake me up when 2017 ends.",
  "I need a soda.",
  "Life ain't easy sometimes, but we just gotta stay in line.",
  "Okay. This movie was absolutely amazing. The cinematography reminds me of traditional East Asian movies from the 1970s.",
  "What...",
  "Amazing",
  "WOW",
  "So cool",
  "That was incredible",
  "4K is so cool",
  "I love this tv show",
  "Meh...",
  "Sometimes when I sit and watch TV, I think of my ex-girlfriend",
  "WOOHOO!",
  "Cineflix... cineflix... CINEFLIX!!!!",
  "Star wars or Legos?",
  "I'm going to the gym now... anyone wanna come with?",
  "I like to wash my hands after I watch movies... mostly because I eat a lot of popcorn",
  "MMMMmmmmmmmm POPCORN",
  "I need a soda.",
  "Life ain't easy sometimes, but we just gotta stay in line.",
  "Okay. This movie was absolutely amazing. The cinematography reminds me of traditional East Asian movies from the 1970s.",
  "What...",
  "Amazing",
  "WOW",
  "So cool",
  "That was incredible",
  "4K is so cool",
  "I love this tv show",
  "Meh...",
  "Sometimes when I sit and watch TV, I think of my ex-girlfriend",
  "WOOHOO!",
  "Cineflix... cineflix... CINEFLIX!!!!",
  "Star wars or Legos?",
  "I'm going to the gym now... anyone wanna come with?",
  "I like to wash my hands after I watch movies... mostly because I eat a lot of popcorn",
];

200.times do
  serie_id = all_series[rand(36)].id
  user_id = all_users[rand(20)].id
  rating = rand(1..5)
  body = random_reviews.sample

  review = Review.new({
    serie_id: serie_id,
    user_id: user_id,
    rating: rating,
    body: body
  })

  reviews.push(review) if review.save
end
