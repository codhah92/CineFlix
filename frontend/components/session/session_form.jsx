import React from 'react';
import { Link, withRouter } from 'react-router';
import FormHeader from '../formHeader';

class SessionForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        email: "",
        username: "",
        password: "",
        emailError: "",
        passwordError: "",
        usernameError: ""
      };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.guestSignIn = this.guestSignIn.bind(this);
    this.update = this.update.bind(this);
    this.redirect = this.redirect.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
  }

  componentDidMount() {
    window.addEventListener('hashchange', () => {
      this.props.clearErrors();
    });
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.formType !== this.props.formType) {
      this.props.clearErrors();
    }
  }

  redirect() {
		if (this.props.loggedIn) {
			this.props.router.push('/browse');
		}
	}

  handleSubmit(e){
    e.preventDefault();
      if (this.state.email.length === 0) {
        this.setState({emailError: "Please enter a valid email."});
      } else {
        this.setState({emailError: ""});
      }
      if (this.state.password.length < 6) {
        this.setState({passwordError: "Your password must contain at least 6 characters."});
      } else {
        this.setState({passwordError: ""});
      }
      if (this.props.formType === 'signup') {
        if (this.state.username.length === 0) {
          this.setState({usernameError: "Please enter a valid username."});
        } else {
          this.setState({usernameError: ""});
        }
      }

    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(() => this.redirect());
  }

  guestSignIn() {
    this.props.processForm({ email: 'guest@guest.com', password: 'guestpass'}).
    then(() => this.redirect());
  }

  renderErrors() {
    if (typeof this.props.errors[0] !== 'undefined') {
      if (this.props.formType === 'signin') {
        return (
          <ul>
            {this.props.errors.map( (error, i) => (
              <li key={`error-${i}`} className="form-error">{error}</li>
            ))}
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
    let formType, bottomLink, usernameInput, guestSignIn ;
    if (this.props.formType === 'signin') {
      formType = 'Sign In';
      usernameInput = '';
      bottomLink =
        <p>
          New to CineFlix?
          <Link to='/signup'className='new-session-signup'> Sign up now.</Link>
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
          onChange={this.update("username")} />
          <li className="usernameError">{this.state.usernameError}</li>
        </label>;
      bottomLink =
        <p>
          Already have an account?
          <Link to='/signin' className='new-session-signin'> Sign In</Link>
        </p>;
    }
    return ({ formType, bottomLink, usernameInput, guestSignIn });
  }

  render() {
    const { formType, bottomLink, usernameInput, guestSignIn } = this.selectForm();
    return (
      <div className={'session-background group'}>
        <FormHeader />
        <div className='session-form group'>
          <h1 className='session-header'>{formType}</h1>
          {this.renderErrors()}
          <form onSubmit={this.handleSubmit}>
            <label htmlFor='form-email' className='form-label'>Email
              <input
                id='form-email'
                className='email'
                type='text'
                value={this.state.email}
                onChange={this.update("email")} />
              <li className="emailError">{this.state.emailError}</li>
            </label>
            {usernameInput}
            <label htmlFor='form-password' className='form-label'>Password
              <input
                id='form-password'
                className='password'
                type='password'
                value={this.state.password}
                onChange={this.update("password")} />
              <li className="passwordError">{this.state.passwordError}</li>
            </label>
            <button className='session-button'>{formType}</button>
          </form>
          {bottomLink}
          {guestSignIn}
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
