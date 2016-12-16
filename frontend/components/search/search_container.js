import Search from './search';
import { connect } from 'react-redux';
import { searchTitles, searchGenres } from '../../actions/search_actions';
import { createMyListItem, removeMyListItem } from '../../actions/favorite_actions';
import { searchResults } from '../../reducers/selectors';


const mapStateToProps = (state, { router }) => ({
  searchResults: searchResults(state),
  favorites: state.session.currentUser ? state.session.currentUser.favorites : { series: [] },
  router
});

const mapDispatchToProps = (dispatch) => ({
  createMyListItem: (serie) => dispatch(createMyListItem(serie)),
  removeMyListItem: (serie) => dispatch(removeMyListItem(serie)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search);
