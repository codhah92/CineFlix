import Search from './search';
import { connect } from 'react-redux';
import { searchTitles } from '../../actions/search_actions';
import { createMyListItem, removeMyListItem } from '../../actions/favorite_actions';


const mapStateToProps = (state, { router }) => ({
  searchedTitles: state.search.titles,
  favorites: state.session.currentUser ? state.session.currentUser.favorites : { series: [] },
  router
});

const mapDispatchToProps = (dispatch) => ({
  searchTitles: (queryString) => dispatch(searchTitles(queryString)),
  createMyListItem: (serie) => dispatch(createMyListItem(serie)),
  removeMyListItem: (serie) => dispatch(removeMyListItem(serie))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search);
