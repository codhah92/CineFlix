import * as APIUtil from '../util/search_api_util';
export const RECEIVE_TITLES = "RECEIVE_TITLES";

export const receiveTitles = (titles) => ({
  type: RECEIVE_TITLES,
  titles
}); 

export function searchTitles (queryString) {
  return (dispatch) => {
    return APIUtil.searchTitles(queryString).then(
      (titles) => dispatch(receiveTitles(titles))
    );
  };
}
