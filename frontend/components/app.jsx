import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import Footer from './footer';
const App = ({ children }) => (
  <div>
    { children }
    <Footer />
  </div>
);

export default App;
