import SearchBar from './search_bar';
import { connect } from 'react-redux';
import { searchTitles } from '../../actions/search_actions';


const mapStateToProps = (state, ownProps) => {
  return {
    searchedTitles: state.search.titles,
    router: ownProps.router
  };
};

const mapDispatchToProps = (dispatch) => ({
  searchTitles: (queryString) => dispatch(searchTitles(queryString))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);
