import { RECEIVE_SERIE } from '../actions/serie_actions';
import { REMOVE_FAVORITE_SERIE, ADD_FAVORITE_SERIE } from '../actions/favorite_actions';
import { UPDATE_RATING, CREATE_RATING, RECEIVE_AVG_RATING } from '../actions/review_actions';
import merge from 'lodash/merge';

const SeriesReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_SERIE:
      return action.serie;
    case ADD_FAVORITE_SERIE:
      newState = merge({}, state);
      let previousFavorites = newState.genres[0].series;
      let newFavorites = [action.serie, ...previousFavorites];
      newState.genres[0].series = newFavorites;
      return newState;
    case REMOVE_FAVORITE_SERIE:
      newState = merge({}, state);
      let serie = action.serie;
      previousFavorites = newState.genres[0].series;
      previousFavorites.splice(previousFavorites.indexOf(serie));
      return newState;
    default:
      return state;
  }
};

export default SeriesReducer;
