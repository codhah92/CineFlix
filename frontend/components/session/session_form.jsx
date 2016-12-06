import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        email: "",
        username: "",
        password: ""
      };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.guestSignIn = this.guestSignIn.bind(this);
    this.update = this.update.bind(this);
  }

  componentDidMount() {
    window.addEventListener('hashchange', () => {
      this.props.clearErrors();
    });
  }

  redirect() {
		if (this.props.loggedIn) {
			this.props.router.push("/");
		}
	}

  handleSubmit(e){
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(() => this.redirect());
  }

  guestSignIn() {
    this.setState({ email: 'guest@guest.com', password: 'guestpass' });
    this.props.processForm({ email: 'guest@guest.com', password: 'guestpass'}).
    then(() => this.redirect());
  }

  renderErrors() {
    if (typeof this.props.errors[0] !== 'undefined'){
      if (this.props.formType === 'signin') {
        return (
          <ul className="errors">
            <li className='error-email'>Please enter a valid email.</li>
            <li className='error-password'>Your password must contain at least 6.</li>
          </ul>
        );
      }
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  selectForm() {
    let formType, route, usernameInput, guestSignIn ;
    if (this.props.formType === 'signin') {
      formType = 'Sign In';
      usernameInput = '';
      route =
        <p>
          New to CineFlix? <Link to='signup'
          className='new-session-signup'>Sign up now.</Link>
        </p>;
      guestSignIn =
        <button className='new-session-guestSignIn'
          onClick={this.guestSignIn}>Sign in as guest</button>;
    } else {
      formType = 'Sign Up';
      usernameInput =
        <label htmlFor='form-username' className='form-label'>Username<input
          id='form-username'
          className='username'
          type='text'
          value={this.state.username}
          onChange={this.update("username")} /></label>;
      route =
        <p>
          Already have an account? <Link to='signin'
          className='new-session-signin'>Sign In</Link>
        </p>;
    }
    return ({ formType, route, usernameInput, guestSignIn });
  }

  render() {
    const { formType, route, usernameInput, guestSignIn } = this.selectForm();
    const _redirectToMain = () => {
      this.props.router.push('/');
    };

    return (
      <div className={'session-background'}>
        <div className='header group'>
          <h1 className='logo entry-logo' onClick={_redirectToMain} />
        </div>
        <div className='session-form group'>
          <h1 className='session-header'>{formType}</h1>
          {this.renderErrors()}
          <form onSubmit={this.handleSubmit}>
            <label htmlFor='form-email' className='form-label'>Email<input
              id='form-email'
              className='email'
              type='text'
              value={this.state.email}
              onChange={this.update("email")} /></label>
            {usernameInput}
            <label htmlFor='form-password' className='form-label'>Password<input
              id='form-password'
              className='password'
              type='password'
              value={this.state.password}
              onChange={this.update("password")} /></label>
            <button className='session-button'>{formType}</button>
          </form>
          {guestSignIn}
          {route}
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
