import React from 'react';
import { Link, withRouter } from 'react-router';

const Greeting = ({ currentUser, router, signin, signout }) => {

  const guestSignIn = () => {
    signin(
      { email: 'guest@guest.com', password: 'guestpass' }, () => {
        router.push('/');
      }
    );
  };

  const _redirectToMain = () => {
    router.push('/');
  };

  if (!currentUser) {
    return (
      <div className='main'>
        <header className='main-header group'>
          <h1 className='main-logo' onClick={_redirectToMain} />
          <div className='main-signin group'>
            <Link to="/signin" className='link-signin'>Sign In</Link>
          </div>
        </header>

        <section className='main-description group'>
          <p className='main-catchphrase'>See what's next.</p>
          <p className='main-motto'>Watch anywhere. Cancel anytime.</p>
          <div className='main-signup group'>
            <Link to="signup"
              className='main-signup-link'>Join Free For a Month
            </Link>
          </div>
          <button className='main-guest-signin'
            onClick={guestSignIn}>Sign in as guest</button>
        </section>

        <footer className='main-footer group'>
          <p className='main-questions'>Questions? Call 917–439–4682</p>
          <ul className='main-footer-ul group'>
            <li className='main-github'>Github</li>
            <li className='main-profile'>Website</li>
            <li className='main-linkedIn'>Linkedin</li>
          </ul>
        </footer>
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
