import * as APIUtil from '../util/session_api_util';

export const CLEAR_ERRORS = 'CLEAR_ERRORS';
export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export function signin(user) {
  return (dispatch) => {
    return APIUtil.signin(user).then(
      (currentUser) => dispatch(receiveCurrentUser(currentUser)),
      (err) => dispatch(receiveErrors(err.responseJSON))
    );
  };
}

export function signout() {
  return (dispatch) => {
    return APIUtil.signout().then(
      () => dispatch(receiveCurrentUser(null)),
      (err) => dispatch(receiveErrors(err.responseJSON))
    );
  };
}

export function signup(user) {
  return (dispatch) => {
    return APIUtil.signup(user).then(
      (currentUser) => dispatch(receiveCurrentUser(currentUser)),
      (err) => dispatch(receiveErrors(err.responseJSON))
    );
  };
}
