import SessionReducer from './session_reducer';
import GenresReducer from './genre_reducer';
import { combineReducers } from 'redux';

const rootReducer = combineReducers({
  session: SessionReducer,
  genres: GenresReducer
});

export default rootReducer;
