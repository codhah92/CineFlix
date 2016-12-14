import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import SessionFormContainer from './session/session_form_container';
import GreetingContainer from './greeting/greeting_container';
import BrowseContainer from './browse/browse_container';
import Browse from './browse/browse';
import { clearErrors } from '../actions/session_actions';
import DashboardContainer from './dashboard/dashboard_container';
import SearchContainer from './search/search_container';

const Root = ({ store }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/signin');
    }
  };

  const _redirectIfLoggedIn = (nextState, replace) => {
    store.dispatch(clearErrors());
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/browse');
    }
  };

  return(
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <IndexRoute
            component={ GreetingContainer }
            onEnter={ _redirectIfLoggedIn }/>
          <Route path="/signin"
            component={ SessionFormContainer }
            onEnter={ _redirectIfLoggedIn }/>
          <Route path="/signup"
            component={ SessionFormContainer }
            onEnter={ _redirectIfLoggedIn }/>
          <Route path="/browse"
            component={ BrowseContainer }
            onEnter={_ensureLoggedIn}/>
          <Route path="/search"
            component={ SearchContainer }
            onEnter={_ensureLoggedIn}/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
