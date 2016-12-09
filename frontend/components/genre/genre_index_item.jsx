import React from 'react';
import { Link, withRouter } from 'react-router';

class GenreIndexItem extends React.Component {
  render () {
    const seriesItems = this.props.genre.series.map((serie) => {
      // return <li><SerieIndexItem serie={ serie } /></li>;
      return (<li>supsup</li>);
    });

    return (
      <ul>
        { seriesItems }
      </ul>
    );
  }
}
export default GenreIndexItem;
