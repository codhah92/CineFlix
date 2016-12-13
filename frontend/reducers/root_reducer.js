import SessionReducer from './session_reducer';
import GenresReducer from './genre_reducer';
import FavoritesReducer from './favorite_reducer';
import { combineReducers } from 'redux';

const rootReducer = combineReducers({
  session: SessionReducer,
  genres: GenresReducer,
  favorites: FavoritesReducer
});

export default rootReducer;
