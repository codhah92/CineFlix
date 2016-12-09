export const RECEIVE_EPISODES = "RECEIVE_EPISODES";
export const RECEIVE_EPISODE = "RECEIVE_EPISODE";

export const receiveEpisodes = (serieId, episodes, cache) => ({
  type: RECEIVE_EPISODES,
  serieId,
  episodes
});

export const receiveEpisode = (episode) => ({
  type: RECEIVE_EPISODE,
  episode
});
