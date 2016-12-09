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
      return (<GenreIndexItem key={genre.id} genre={genre} />);
    });

    return (
      <div className='genre-index'>
        hello
        { genreIndexItems }
      </div>
    );
  }
}

export default withRouter(GenreIndex);
