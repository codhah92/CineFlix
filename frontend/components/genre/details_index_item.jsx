import React from 'react';
import { Link, withRouter } from 'react-router';

class DetailsIndexItem extends React.Component {
  render() {
    return (
      <img className="episode-image"
        src={this.props.episode.image_url}
        onClick={this.props.changeIt.bind(null, this.props.episode.video_url)}
        />
    );
  }
}

export default DetailsIndexItem;
