import React from 'react';
import { Link, withRouter } from 'react-router';
import DashboardContainer from '../dashboard/dashboard_container';
import GenreContainer from '../genre/genre_container';

const Browse = () => {
  return (
    <div>
      <DashboardContainer />
      <GenreContainer />
    </div>
  );
};

export default Browse;
