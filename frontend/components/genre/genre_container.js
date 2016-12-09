import { connect } from 'react-redux';
import GenreIndex from './genre_index';
import { fetchGenres, fetchGenre } from '../../actions/genre_actions';

const mapStateToProps = ({ genres, router }) => {
  return {
    genres
  };
};

const mapDispatchToProps = dispatch => ({
  fetchGenres: () => dispatch(fetchGenres()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GenreIndex);
