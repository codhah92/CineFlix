import SearchBar from './search_bar';
import { connect } from 'react-redux';
import { searchTitles } from '../../actions/search_actions';


const mapStateToProps = (state, { router }) => ({
  searchedTitles: state.search.titles,
  router
});

const mapDispatchToProps = (dispatch) => ({
  searchTitles: (queryString) => dispatch(searchTitles(queryString))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);
