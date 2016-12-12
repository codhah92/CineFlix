export const RECEIVE_EPISODES = "RECEIVE_EPISODES";
export const RECEIVE_EPISODE = "RECEIVE_EPISODE";
export const REQUEST_EPISODES = "REQUEST_EPISODES";
export const REQUEST_EPISODE = "REQUEST_EPISODE";

export const requestEpisodes = (serieId) => ({
  type: REQUEST_EPISODES,
  serieId
});

export const requestEpisode = (id, callback) => ({
  type: REQUEST_EPISODE,
  id,
  callback
});

export const receiveEpisodes = (serieId, episodes) => ({
  type: RECEIVE_EPISODES,
  serieId,
  episodes
});

export const receiveEpisode = (episode) => ({
  type: RECEIVE_EPISODE,
  episode
});
