import React from 'react';
import { Link, withRouter } from 'react-router';

const Footer = () => {
  return (
    <footer className='main-footer group'>
      <p className='main-questions'>Questions? Call 917–439–4682</p>
      <ul className='main-footer-ul group'>
        <li className='main-github'>
          <a href="https://www.github.com/codhah92/cineflix">Github</a>
        </li>
        <li className='main-profile'>
          <a href="http://www.codyjhahn.com">Profile</a>
        </li>
        <li className='main-linkedIn'>
          <a href="https://www.linkedin.com/in/codyjhahn">Linkedin</a>
        </li>
      </ul>
    </footer>
  );
};

export default Footer;
