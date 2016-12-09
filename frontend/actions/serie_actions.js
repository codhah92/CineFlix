import * as APIUtil from '../util/series_api_util';

export const RECEIVE_SERIE = "RECEIVE_SERIE";
export const REQUEST_SERIE = "REQUEST_SERIE";

export const requestSerie = (id, genreId) => ({
  type: REQUEST_SERIE,
  id,
  genreId
});

export const receiveSerie = (serie) => ({
  type: RECEIVE_SERIE,
  serie
});

export function fetchSerie(id) {
  return (dispatch) => {
    return APIUtil.fetchGenre(id).then(
      (serie) => dispatch(receiveSerie(serie))
    );
  };
}
