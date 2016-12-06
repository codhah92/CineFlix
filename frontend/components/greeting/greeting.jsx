import React from 'react';
import { Link, withRouter } from 'react-router';

const Greeting = ({ currentUser, router, signin, signout }) => {

  const _redirectToMain = () => {
    router.push('/');
  };

  const guestSignIn = () => {
    signin(
      { email: 'guest@guest.com', password: 'password' }, () => {
        router.push('/');
      }
    );
  };

  if (!currentUser) {
    return (
      <div className='main'>
        <header className='main-header'>
          <h1 className='main-logo' onClick={_redirectToMain} />
          <div className='group'>
            <Link to="/signin" className='main-signin'>Sign In</Link>
          </div>
        </header>

        <section className='main-description'>
          <p className='main-catchphrase'>See what's next.</p>
          <p className='main-motto'>Watch anywhere. Cancel anytime.</p>
          <Link to="signup"
            className='main sign-up'>Join Free For a Month
          </Link>
          <button className='main-guest-signin'
            onClick={guestSignIn}>Sign in as guest</button>
        </section>
      </div>
    );
  } else {
    return (
      <div>
        <h1 className="greeting">Hi, {currentUser.username}</h1>
        <button className="signout" onClick={signout}>Sign Out</button>
      </div>
    );
  }
};

export default withRouter(Greeting);
