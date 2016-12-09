import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';
import thunk from '../middleware/thunk';
import createLogger from 'redux-logger';

const configureStore = (preloadedState = {}) =>{
  return (
    createStore(
    rootReducer,
    preloadedState,
    applyMiddleware(thunk, createLogger())
  )
);
};


export default configureStore;
