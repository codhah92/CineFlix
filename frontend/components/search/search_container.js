import Search from './search';
import { connect } from 'react-redux';
import { searchTitles } from '../../actions/search_actions';
import { createMyListItem, removeMyListItem } from '../../actions/favorite_actions';
import { updateRating, createRating, updateBody, createBody } from '../../actions/review_actions';

const mapStateToProps = (state, { router }) => ({
  searchedTitles: state.search.titles,
  currentUser: state.session.currentUser,
  favorites: state.session.currentUser ? state.session.currentUser.favorites : { series: [] },
  router
});

const mapDispatchToProps = (dispatch) => ({
  searchTitles: (queryString) => dispatch(searchTitles(queryString)),
  createMyListItem: (serie) => dispatch(createMyListItem(serie)),
  removeMyListItem: (serie) => dispatch(removeMyListItem(serie)),
  updateRating: (reviewId, rating) => dispatch(updateRating(reviewId, rating)),
  createRating: (serie) => dispatch(createRating(serie)),
  updateReviewBody: (reviewId, body, rating) => dispatch(updateBody(reviewId, body, rating)),
  createReviewBody: (serie) => dispatch(createBody(serie)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search);
