import React from 'react';
import { Link, withRouter } from 'react-router';

const Dashboard = ({ currentUser, router, signout }) => {

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
          <h2 className='navbrowse-dropdown'>Browse</h2>
          <div className='browse-user group'>{currentUserUsername}
            <ul className='profile-dropdown'>
              <li className='profile-dropdown-item'>
                <button className='profile-sign-out'
                  onClick={userSignout}>Sign out of CineFlix</button>
              </li>
            </ul>
          </div>
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
