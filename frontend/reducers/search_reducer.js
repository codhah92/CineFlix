import { RECEIVE_TITLES, RECEIVE_GENRES } from '../actions/search_actions';
import merge from 'lodash/merge';

const _defaultState = {
  titles: [],
  genres: []
};

const SearchReducer = (state = _defaultState, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_GENRES:
      newState.genres = action.genres;
      return newState;
    case RECEIVE_TITLES:
      newState.titles = action.titles;
      return newState;
    default:
      return state;
  }
};

export default SearchReducer;
