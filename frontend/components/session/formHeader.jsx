import React from 'react';
import { Link, withRouter } from 'react-router';

const FormHeader = ({ router }) => {

  const _redirectToMain = () => {
    router.push('/');
  };

  return (
    <header className='main-header group'>
      <h1 className='main-logo' onClick={_redirectToMain} />
    </header>
  );
};

export default FormHeader;
