import * as APIUtil from '../util/search_api_util';
export const RECEIVE_TITLES = "RECEIVE_TITLES";
export const RECEIVE_GENRES = "RECEIVE_GENRES";

export const receiveTitles = (titles) => ({
  type: RECEIVE_TITLES,
  titles
});

export const receiveGenres = (genres) => ({
  type: RECEIVE_GENRES,
  genres
});

export function searchTitles (queryString) {
  return (dispatch) => {
    return APIUtil.searchTitles(queryString).then(
      (titles) => dispatch(receiveTitles(titles))
    );
  };
}

export function searchGenres (queryString) {
  return (dispatch) => {
    return APIUtil.searchGenres(queryString).then(
      (genres) => dispatch(receiveGenres(genres))
    );
  };
}
