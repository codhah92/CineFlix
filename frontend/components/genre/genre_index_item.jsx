import React from 'react';
import { Link, withRouter } from 'react-router';
import SerieIndexItem from './serie_index_item';

class GenreIndexItem extends React.Component {
  render () {
    const seriesItems = this.props.genre.series.map((serie) => {
      return <SerieIndexItem key={serie.id} serie={ serie } />;
    });

    return (
      <ul>
        { seriesItems }
      </ul>
    );
  }
}
export default GenreIndexItem;
