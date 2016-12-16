import { RECEIVE_TITLES } from '../actions/search_actions';
import merge from 'lodash/merge';

const _defaultState = {
  titles: []
};

const SearchReducer = (state = _defaultState, action) => {
  Object.freeze(state);
  let newState = {};
  switch(action.type) {
    case RECEIVE_TITLES:
      newState.titles = action.titles;
      return newState;
    default:
      return state;
  }
};

export default SearchReducer;
