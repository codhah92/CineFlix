import React from 'react';
import { Link, withRouter } from 'react-router';

const Footer = () => {
  return (
    <footer className='main-footer group'>
      <p className='main-questions'>Questions? Call 917–439–4682</p>
      <ul className='main-footer-ul group'>
        <li className='main-github'>Github</li>
        <li className='main-profile'>Website</li>
        <li className='main-linkedIn'>Linkedin</li>
      </ul>
    </footer>
  );
};

export default Footer;
