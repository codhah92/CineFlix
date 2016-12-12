## Component Hierarchy

**AuthFormContainer**
  - AuthForm

**DashboardContainer**
  - Dashboard
    * Browse Dropdown
      * Browse
      * MyList
      * Genre
    * Search

**SeriesContainer**
  - SeriesIndex

**EpisodeContainer**
  - WatchEpisode

**SearchContainer**
  - SearchResults
    - SeriesIndex

**UserContainer**
  - User

**MyList**
  - MyListItems
    - SeriesIndex

**Genre**
  - GenreItems
    - SeriesIndex

**SeriesIndex**
  * SeriesIndexItems
    * Overview
    * Detail
      - Review
    * EpisodesIndex
      - EpisodesIndexItems
        + Episode


## Routes

| Path	| Component |
|-------|-----------|
|"/signup"	| "AuthFormContainer" |
|"/signin" |	"AuthFormContainer" |
|"/browse" | "SeriesContainer" |
|"/browse/my-list" | "MyList" |
|"/browse/genre/:genreId" | "Genre" |
|"/search" | "SearchContainer" |
|"/watch/:episodeId" | "EpisodeContainer" |
|"/profile" | "UserContainer" |
