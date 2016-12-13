import React from 'react';
import { Link, withRouter } from 'react-router';
import GenreIndexItem from './genre_index_item';
import { fetchGenres } from '../../actions/genre_actions';

class GenreIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  // _redirectToGenre() {
  //   this.props.router.push(`/browse/genres/${this.props.genres.id}`);
  // }
  componentDidMount() {
    this.props.fetchGenres();
   }

  render() {
    const favorites = (
      [<ul className="genre-carousel-row group">
        <li className="genre-title">My List</li>
        <li className="serie-index-item">
          <GenreIndexItem
            genre={ this.props.favorites }
            addSerieToMyList={ this.props.createMyListItem }>

          </GenreIndexItem>
        </li>
      </ul>]);
    const genreIndexItems = this.props.genres.map((genre, id) => {
      return (
        <ul key={genre.id} className="genre-carousel-row group">
          <li className="genre-title">{genre.name}</li>
          <li className="serie-index-item">
            <GenreIndexItem
              genre={genre}
              addSerieToMyList={this.props.createMyListItem}
            />
          </li>
        </ul>
      );
    });
    return (
      <div className='genre-index group'>
        { favorites.concat(genreIndexItems) }
      </div>
    );
  }
}

export default withRouter(GenreIndex);
