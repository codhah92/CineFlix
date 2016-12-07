import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import SessionFormContainer from './session/session_form_container';
import GreetingContainer from './greeting/greeting_container';

const Root = ({ store }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/signin');
    }
  };

  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return(
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <IndexRoute component={ GreetingContainer }/>
          <Route path="/signin"
            component={ SessionFormContainer }
            onEnter={ _redirectIfLoggedIn }/>
          <Route path="/signup"
            component={ SessionFormContainer }
            onEnter={ _redirectIfLoggedIn }/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
