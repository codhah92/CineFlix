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
      <header className='browse-header'>
        <nav className='browser'>
          <h1 className='logo browse-logo' onClick={_redirectToBrowse} />
          <div className='browse-user'>{currentUserUsername}
            <ul className='browse-dropdown'>
              <li className='browse-dropdown-item'>
                <button className='sign-out'
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
