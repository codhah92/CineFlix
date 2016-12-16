import SearchBar from './search_bar';
import { connect } from 'react-redux';
import { searchTitles, searchGenres } from '../../actions/search_actions';


const mapStateToProps = (state, ownProps) => {
  return {
    router: ownProps.router
  };
};

const mapDispatchToProps = (dispatch) => ({
  searchTitles: (queryString) => dispatch(searchTitles(queryString)),
  searchGenres: (queryString) => dispatch(searchGenres(queryString))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);
