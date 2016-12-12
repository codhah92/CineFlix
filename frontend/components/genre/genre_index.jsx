import React from 'react';
import { Link, withRouter } from 'react-router';
import GenreIndexItem from './genre_index_item';
import { fetchGenres } from '../../actions/genre_actions';

class GenreIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      myList: null
    };

    this.addSerieToMyList = this.addSerieToMyList.bind(this);
  }

  // _redirectToGenre() {
  //   this.props.router.push(`/browse/genres/${this.props.genres.id}`);
  // }
  componentDidMount() {
    this.props.fetchGenres().then(() => this.setState({ myList: this.props.genres[0] }));
   }

  addSerieToMyList(serie) {
    this.setState( { myList: this.state.myList.series.push(serie) } );
  }

  render() {
    const genreIndexItems = this.props.genres.map((genre, id) => {
      return (
        <ul key={genre.id} className="genre-carousel-row group">
          <li className="genre-title">{genre.name}</li>
          <li className="serie-index-item">
            <GenreIndexItem
              genre={genre}
              addSerieToMyList={this.addSerieToMyList}
            />
          </li>
        </ul>
      );
    });

    return (
      <div className='genre-index group'>
        { genreIndexItems }
      </div>
    );
  }
}

export default withRouter(GenreIndex);
