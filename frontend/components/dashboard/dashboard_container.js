import { connect } from 'react-redux';
import { signout } from '../../actions/session_actions';
import Dashboard from './dashboard';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
});


const mapDispatchToProps = (dispatch) => ({
  signout: () => dispatch(signout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Dashboard);
