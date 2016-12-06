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
    this.redirect = this.redirect.bind(this);
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
    this.props.processForm({ email: 'guest@guest.com', password: 'guestpass'}).
    then(() => this.redirect());
  }

  renderErrors() {
		return(
			<ul>
				{this.props.errors.map((error, i) => (
					<li key={`error-${i}`}>
						{error}
					</li>
				))}
			</ul>
		);
	}
    // if (typeof this.props.errors[0] !== 'undefined'){
    //   if (this.props.formType === 'signin')  {
    //     if (this.state.email === "") {
    //       return (
    //         <li className='empty-email'>
    //           Please enter a valid email.
    //         </li>
    //       );
    //     } else if (this.state.password === ""){
    //       return (
    //         <li className='empty-password'>
    //           Your password must contain at least 6 characters.
    //         </li>
    //       );
    //     }


        // return (
        //   <ul className="signin-errors" >
        //     <li className='nonexistent-email'>
        //       Sorry, we can't find an account with this email address.
        //       Please try again or create a new account.
        //     </li>
        //     <li className='incorrect-password'>
        //       Incorrect password. Please try again or you can reset your password.
        //     </li>
        //     <li className='empty-email'>
        //       Please enter a valid email.
        //     </li>
        //     <li className='empty-password'>
        //       Your password must contain at least 6 characters.
        //     </li>
        //   </ul>
        // );
  //     }
  //   }
  // }

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
          <Link to='signup'className='new-session-signup'>Sign up now.</Link>
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
      bottomLink =
        <p>
          Already have an account?
          <Link to='signin'className='new-session-signin'>Sign In</Link>
        </p>;
    }
    return ({ formType, bottomLink, usernameInput, guestSignIn });
  }

  render() {
    const { formType, bottomLink, usernameInput, guestSignIn } = this.selectForm();
    return (
      <div className={'session-background'}>
        <div className='header'>
          <h1 className='logo entry-logo' onClick={this.redirect()} />
        </div>
        <div className='session-form'>
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
          {bottomLink}
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
