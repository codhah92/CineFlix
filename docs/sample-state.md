```javascript

{
  currentUser: {
    id: 1,
    username: "guest",
    email: "guest@guest.com",
    favorites: [favorite_id1, favorite_id2]
  },
  forms: {
    signUp: {errors: { base: [] }},
    logIn: {errors: { base: [] }},
  },
  series: {
    1: {
      title: "The Walking Dead",
      description: "Zombie Survival Thriller",
      year: 2010,
      avg_rating: 3,
      genre_id: 1,
    }
  },
  episodes: {
    1: {
      series_id: 1
      title: "Pilot",
      synopsis: "Rick is in trouble",
      video_url: youtube,
    }
  }
  genres: {
    1: {
      name: 'Thriller'
    }
  },
  reviews: {
    1: {
      user_id: 1,
      rating: 5,
    }
  },
  castings:{
    1: {
      series_id: 1,
      cast_id: [1]
    }
  },
  casts: {
    1: {
      name: "Rick",
      castings_id: 30
    }
  }

}

```
