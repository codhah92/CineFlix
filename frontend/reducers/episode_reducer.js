import { RECEIVE_EPISODES, RECEIVE_EPISODE } from '../actions/episode_actions';
import merge from 'lodash/merge';

const EpisodeReducer = (state = [], action) => {
  switch(action.type) {
    case RECEIVE_EPISODES:
      return action.episodes;
    case RECEIVE_EPISODE:
      return action.episode;
    default:
      return state;
  }
};

export default EpisodeReducer;
