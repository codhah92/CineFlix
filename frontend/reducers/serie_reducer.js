import { RECEIVE_SERIE } from '../actions/serie_actions';
import merge from 'lodash/merge';

const SeriesReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_SERIE:
      return action.serie;
    default:
      return state;
  }
};

export default SeriesReducer;
