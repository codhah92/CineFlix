# CineFlix

[CineFlix live][heroku]

[heroku]: http://cineflix.herokuapp.com/

## Minimum Viable Product

CineFlix is a Netflix clone built using Ruby on Rails & React/Redux. The primary features of this website include:

- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] Production README
- [ ] Smooth, bug-free navigation, adequate seed data and sufficient CSS styling

- [ ] Videos
  - Access various series to pick & play video clips

- [ ] Ratings
  - Rate a series

- [ ] My List
  - Create a list to keep track of series user is interested in

- [ ] Wrap-around Scroll
  - Series are organized by genre with a 'wrap-around' scroll

- [ ] Search
  - Search for a series by genre or title (cast as a bonus)

- Bonus:
  - [ ] Continue Watching
    - Keep track of which episode a user was on for a given series/show
  - [ ] Featured Series
    - Browser Home will have a 'feature' series to watch based on most recent addition
  - [ ] Infinite Scroll
    - More genres will load when scrolling to bottom of Browser Home
  - [ ] Auto-play
    - Clips will auto-play following clips in series
  - [ ] Suggested Series
    - Series will be suggested based on user's watch history
  - [ ] Notifications Bell
    - Notifications for new additions added to database
  - [ ] OAuth
    - OAuth login using Facebook

## Design Docs
* [View Wireframes](wireframes)
* [React Components](component-hierarchy.md)
* [API endpoints](api-endpoints.md)
* [DB schema](schema.md)
* [Sample State](sample-state.md)

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (2 days)

**Objective:** Functioning rails project with front-end Authentication

### Phase 2: Series Model, API, and components (2 days)

**Objective:** Series can be created, read, edited and destroyed through the API.

### Phase 3: Episode Model, API, and components (2 days)

**Objective:** Episodes can be created, read, edited and destroyed through the API.

### Phase 4: Ratings (2 days)

**Objective:** Ratings belong to series that can be created, read, edited and destroyed through the API.

### Phase 5: Search (1 day)

**Objective:** Be able to search for series by genre or title

### Phase 6: My List (1 day)

**Objective:** Be able to create a list of series-to-watch that can be updated (added to & removed from)

### Phase 7: Infinite scroll for Browser Home (1 day)

**Objective:** Add infinite scroll to Browser Home
