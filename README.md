# CineFlix

[CineFlix live][heroku]

[heroku]: http://cineflixx.herokuapp.com/

## Minimum Viable Product

CineFlix is a full-stack web application inspired by Netflix. It is built
on a backend of Ruby on Rails and PostgreSQL. The frontend is implemented
with Javascript, React.js and a Redux architectural framework.

## Videos
Videos are retrieved from a YouTube API. The react-youtube library is used
to play videos of each 'episode' through its containing 'video_url'.
Episodes are listed as an array inside of a 'serie' object and 'serie' objects
are held within a 'series' array within each 'genre'. When a user logs in
to CineFlix, the user is directed to the /browse page of his or her personal
video listing and is able to view every genre that holds 'serie' objects. The user
can then access a series' episodes by clicking into any of these 'serie' objects.

## Serie
When a 'serie' object is clicked in the browse page, a modal is rendered on the
screen, autoplaying the first episode of the current series. The modal also
dims the background, allowing for a more cinema-like experience for the user.

## Ratings
Ratings are stored within each serie object. Serie objects also hold an
'avg_rating', which is calculated through a SQL query that finds the average
of every rating of that serie by all users in the database. Average user ratings
are displayed initially in red. When a user rates a serie, their rating will be
displayed in gold and will persist. Ratings are created and updated both in the
frontend and backend to allow for a dynamic experience for the user.

## My List
A 'My List' button is available on each serie modal. Every user has his or her
own personal 'My List', which keeps track of the user's favorited shows. Initially,
all items are listed with a plus sign in front to indicate that they can be added to
the user's 'My List'. Once the series is added to a 'My List', the plus sign becomes a
check mark. The button can be clicked again to remove the series from a user's 'My List'.
'My List' was implemented with a Favorites table, which acts as a join table for
users and series.

## Image Carousel (Wrap-around Infinite Scroll)
The image carousel is displayed for each genre on the '/browse' page whenever the
row contains 6 or more series. The scroll was created using a react library called
react-slick. The scroll slides 6 series at a time until it reaches the last few series
within the genre.
## Search

## Future Directions for the Project
