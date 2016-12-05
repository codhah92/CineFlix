# Database Schema

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
is_admin        | boolean   | default: false

## series
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
title           | string    | not null, indexed, unique
year            | integer   | not null
description     | text      | not null
avg_rating	    | integer	  | default: 0
image_name      | string    |
image_type      | string    |
image_size      | integer   |

## episodes
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer	  | not null, primary key
series_id       | integer   | not null, foreign key, indexed
title	          | string	  | not null, indexed
synopsis        | text   	  | not null
image_name      | string    |
image_type      | string    |
image_size      | integer   |
video_url       | string    | not null

## genres
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer	  | not null, primary key
name            | string    | not null, indexed

## series_genres
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer	  | not null, primary key
series_id       | integer   | not null, foreign key (references series), indexed
genre_id        | integer   | not null, foreign key (references genres), indexed

## favorites
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer	  | not null, primary key
series_id       | integer   | not null, foreign key (references series), indexed
user_id         | integer   | not null, foreign key (references users), indexed

## reviews
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer   |	not null, primary key
series_id       | integer   | not null, indexed
user_id         | integer   | not null, indexed
rating          | integer   | not null, default: 0, indexed
body            | text      | not null

## castings (bonus)
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer   |	not null, primary key
series_id       | integer   | not null, indexed, foreign_key(references castings series table)
cast_id         | integer   | not null, indexed, foreign_key(references castings users table)

## casts (bonus)
column          | data type |	 details
----------------|-----------|---------------------------
id	            | integer   |	not null, primary key
name            | string    | not null, indexed
castings_id     | integer   | indexed, foreign_key(references castings join table)
