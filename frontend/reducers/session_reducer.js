import { RECEIVE_CURRENT_USER, RECEIVE_ERRORS, CLEAR_ERRORS } from '../actions/session_actions';
import { REMOVE_FAVORITE_SERIE, ADD_FAVORITE_SERIE } from '../actions/favorite_actions';
import merge from 'lodash/merge';

const initialState = {
  currentUser: null,
  errors: []
};

const SessionReducer = (state = initialState, action) => {
  let newState = merge({}, state);
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return { currentUser: action.currentUser, errors: [] };
    case RECEIVE_ERRORS:
      return { currentUser: null, errors: action.errors };
    case CLEAR_ERRORS:
      newState.errors = [];
      return newState;
    case ADD_FAVORITE_SERIE:
      let previousFavorites = newState.currentUser.favorites.series;
      let newFavorites = [action.serie, ...previousFavorites];
      newState.currentUser.favorites.series = newFavorites;
      return newState;
    case REMOVE_FAVORITE_SERIE:
      let serie = action.serie;
      previousFavorites = newState.currentUser.favorites.series;
      previousFavorites.splice(previousFavorites.indexOf(serie));
      return newState;
    default:
      return state;
  }
};

export default SessionReducer;
