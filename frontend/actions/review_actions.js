import * as APIUtil from '../util/review_api_util';
import { receiveSerie } from './serie_actions';

export const UPDATE_RATING = "UPDATE_RATING";
export const CREATE_RATING = "CREATE_RATING";
export const UPDATE_BODY = "UPDATE_BODY";
export const CREATE_BODY = "CREATE_BODY";

export const createSerieRating = (review) => ({
  type: CREATE_RATING,
  review
});

export const updateSerieRating = (review) => ({
  type: UPDATE_RATING,
  review
});

export const createSerieBody = (review) => ({
  type: CREATE_RATING,
  review
});

export const updateSerieBody = (review) => ({
  type: UPDATE_RATING,
  review
});

export function createRating(review) {
  return (dispatch) => {
    return APIUtil.createRating(review).then(
      (serie) => dispatch(receiveSerie(serie))
    );
  };
}

export function updateRating(reviewId, rating) {
  return (dispatch) => {
    return APIUtil.updateRating(reviewId, rating).then(
      (serie) => dispatch(receiveSerie(serie))
    );
  };
}
export function createBody(review) {
  return (dispatch) => {
    return APIUtil.createBody(review).then(
      (serie) => dispatch(receiveSerie(serie))
    );
  };
}

export function updateBody(reviewId, body, rating) {
  return (dispatch) => {
    return APIUtil.updateBody(reviewId, body, rating).then(
      (serie) => dispatch(receiveSerie(serie))
    );
  };
}
