# CineFlix

[CineFlix live][heroku]

[heroku]: http://cineflixx.herokuapp.com/

## Minimum Viable Product

CineFlix is a full-stack web application inspired by Netflix. It is built
on a backend of Ruby on Rails and PostgreSQL. The frontend was implemented
with Javascript, React.js and a Redux architectural framework.

## Videos
Videos are retrieved from a YouTube API. The react-youtube library is used
to play videos of each 'episode' through its containing 'video_url'.
Episodes are listed as an array inside of a 'serie' object and 'serie' objects
are held within a 'series' array within each 'genre'. When a user logs in
to CineFlix, the user is directed to the /browse page of his or her personal
video listing and is able to view every genre that holds serie objects. The user
can then access a serie object's episodes by clicking into any of these serie objects.

## Serie
When a serie object is clicked in the browse page, a modal is rendered on the
screen, autoplaying the first episode of the current series 

## Ratings
Ratings are stored within each serie object. Serie objects also hold an
'avg_rating', which is calculated through a SQL query that finds the average
of every rating of that serie by all users in the database. Ratings are created
and updated both in the frontend and backend
## My List

## Image Carousel (Wrap-around Infinite Scroll)

## Search

## Future Directions for the Project
