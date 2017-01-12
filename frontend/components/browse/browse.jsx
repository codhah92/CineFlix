import React from 'react';
import { Link, withRouter } from 'react-router';
import DashboardContainer from '../dashboard/dashboard_container';
import GenreContainer from '../genre/genre_container';
import ReactPlayer from 'react-player';

const Browse = ({ children }) => {
  return (
    <div>
      <DashboardContainer />
      <div className="video-wrapper">
        <video autoPlay="true" loop="true">
          <source src={window.assets.browseVideo} type="video/mp4"/>
        </video>
      </div>
      <GenreContainer />
      { children }
    </div>
  );
};

export default Browse;

// <div className="browser-content"/>
