import { RECEIVE_GENRE } from '../actions/genre_actions';
import merge from 'lodash/merge';

const _defaultGenre = {
  name: '',
  series: []
};

const GenreIndexItemReducer = (state = _defaultGenre, action) => {
  switch(action.type) {
    case RECEIVE_GENRE:
      return merge({}, state, action.genre);
    default:
      return state;
  }
};

export default GenreIndexItemReducer;
