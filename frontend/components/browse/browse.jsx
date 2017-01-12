import React from 'react';
import { Link, withRouter } from 'react-router';
import DashboardContainer from '../dashboard/dashboard_container';
import GenreContainer from '../genre/genre_container';
import ReactPlayer from 'react-player';
import YouTube from 'react-youtube';

const opts = {
  height: '9850px',
  width: '100%',
  position: 'absolute',
  top: 0,
  left: 0,
  playerVars: {
    autohide: 1,
    showinfo: 0,
    autoplay: 1,
    controls: 0,
    loop: 1,
    modestBranding: 1,
    iv_load_policy: 3,
    playlist:"6pxRHBw-k8M"
  }
};

const browsePlayer = <YouTube videoId="6pxRHBw-k8M" alt="" opts={opts}/>;

const Browse = ({ children }) => {
  return (
    <div>
      <DashboardContainer />
      <div className="video-wrapper">
        { browsePlayer }
        <div className="browse-video-motto">
          <div className="browse-video-title">CineFlix Original: "4K"</div>
          <div className="browse-video-description">A series of scenic videos with soothing background music</div>
        </div>
      </div>
      <GenreContainer />
      { children }
    </div>
  );
};

export default Browse;

// <button className='play-now'>Play Now</button>
// <button className='browse-my-list'>My List +</button>
