import * as APIUtil from '../util/favorite_api_util';

export const REMOVE_FAVORITE_SERIE = "REMOVE_FAVORITE_SERIE";
export const ADD_FAVORITE_SERIE = "ADD_FAVORITE_SERIE";

export const addFavoriteSerie = (serie) => ({
  type: ADD_FAVORITE_SERIE,
  serie
});

export const removeFavoriteSerie = (serie) => ({
  type: REMOVE_FAVORITE_SERIE,
  serie
});

export function createMyListItem(serie) {
  return (dispatch) => {
    return APIUtil.createFavorite(serie.id).then(
      (favorite) => dispatch(addFavoriteSerie(serie))
    );
  };
}

export function removeMyListItem(serie) {
  return (dispatch) => {
    return APIUtil.removeFavorite(serie.id).then(
      (favorite) => dispatch(removeFavoriteSerie(serie))
    );
  };
}
