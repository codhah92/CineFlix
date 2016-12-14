import React from 'react';
import { Link, withRouter } from 'react-router';
import DashboardContainer from '../dashboard/dashboard_container';
import GenreContainer from '../genre/genre_container';


const Browse = ({ children }) => {
  return (
    <div>
      <DashboardContainer />
      <div className="browser-content"/>
      <GenreContainer />
      { children }
    </div>
  );
};

export default Browse;
