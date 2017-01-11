import React from 'react';
import { Link, withRouter } from 'react-router';
import SearchBarContainer from '../search/search_bar_container';

const Dashboard = ({ currentUser, router, signout, alwaysOpen }) => {

  const userSignout = () => {
    signout().then(() => {
      router.push('/');
    });
  };

  const _redirectToBrowse = () => {
    router.push('/browse');
  };

  const currentUserUsername = (currentUser) ? currentUser.username : '';
  if (currentUser) {
    return (
      <header className='browse-header group'>
        <nav className='browser group'>
          <h1 className='browse-logo' onClick={_redirectToBrowse} />
          <h2 className='navbrowse group'>Browse
            <ul className='navbrowse-dropdown'>
              <li className='navbrowse-dropdown-item'>
                <button className='navbrowse-home'
                  onClick={_redirectToBrowse}>Home</button>
              </li>
            </ul>
          </h2>
          <SearchBarContainer router={ router } alwaysOpen={ alwaysOpen }/>
          <h2 className='browse-user group'>{currentUserUsername}
            <ul className='profile-dropdown'>
              <li className='profile-dropdown-item'>
                <button className='profile-sign-out'
                  onClick={userSignout}>Sign out of CineFlix</button>
              </li>
            </ul>
          </h2>
        </nav>
      </header>
    );
  } else {
    return (
      <div></div>
    );
  }
};

export default withRouter(Dashboard);
