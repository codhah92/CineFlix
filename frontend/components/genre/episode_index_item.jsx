import React from 'react';
import { Link, withRouter } from 'react-router';

class EpisodeIndexItem extends React.Component {
  render() {
    return (
      <li className="episode-image">
        <img src={this.props.episode.image_url} />
      </li>
    );
  }
}

export default EpisodeIndexItem;
