import * as APIUtil from '../util/genre_api_util';

export const RECEIVE_GENRES = "RECEIVE_GENRES";
export const RECEIVE_GENRE = "RECEIVE_GENRE";

export const receiveGenres = (genres) => ({
  type: RECEIVE_GENRES,
  genres
});

export const receiveGenre = (genre) => ({
  type: RECEIVE_GENRE,
  genre
});

export function fetchGenres() {
  return (dispatch) => {
    return APIUtil.fetchGenres().then(
      (genres) => dispatch(receiveGenres(genres))
    );
  };
}

export function fetchGenre(id) {
  return (dispatch) => {
    return APIUtil.fetchGenre(id).then(
      (genre) => dispatch(receiveGenre(genre))
    );
  };
}
