import React from 'react';
import { connect } from 'react-redux';
import Greeting from './greeting';
import { signout, signin } from '../../actions/session_actions';

const mapStateToProps = state => {
  return {currentUser: state.session.currentUser};
};

const mapDispatchToProps = dispatch => ({
  signout: () => dispatch(signout()),
  signin: (user) => dispatch(signin(user)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
