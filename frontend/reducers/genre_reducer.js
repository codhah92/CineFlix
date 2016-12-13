import { RECEIVE_GENRES } from '../actions/genre_actions';
import merge from 'lodash/merge';

const GenresReducer = (state = [], action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_GENRES:
      return action.genres;
    default:
      return state;
  }
};

export default GenresReducer;
