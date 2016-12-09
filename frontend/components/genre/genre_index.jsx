import React from 'react';
import { Link, withRouter } from 'react-router';
import GenreIndexItem from './genre_index_item';
import { fetchGenres } from '../../actions/genre_actions';

class GenreIndex extends React.Component {

  // _redirectToGenre() {
  //   this.props.router.push(`/browse/genres/${this.props.genres.id}`);
  // }
  componentDidMount() {
    this.props.fetchGenres();
   }

  render() {
    const genreIndexItems = this.props.genres.map((genre, id) => {
      return (
        <div key={genre.id} className="genre-name">
          {genre.name}
          <GenreIndexItem genre={genre} />
        </div>
      );
    });

    return (
      <div className='genre-index'>
        { genreIndexItems }
      </div>
    );
  }
}

export default withRouter(GenreIndex);
