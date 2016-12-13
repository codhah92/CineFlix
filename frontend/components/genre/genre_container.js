import { connect } from 'react-redux';
import GenreIndex from './genre_index';
import { fetchGenres, fetchGenre } from '../../actions/genre_actions';
import { createMyListItem, removeMyListItem } from '../../actions/favorite_actions';

const mapStateToProps = ( { genres, session: { currentUser }} ) => {
  return {
    genres,
    favorites: currentUser ? currentUser.favorites : { series: [] }
  };
};

const mapDispatchToProps = dispatch => ({
  fetchGenres: () => dispatch(fetchGenres()),
  createMyListItem: (serie) => dispatch(createMyListItem(serie)),
  removeMyListItem: (serie) => dispatch(removeMyListItem(serie))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GenreIndex);
