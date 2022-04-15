import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
import MainPage from '../bundles/components/main_page'
import 'bootstrap/dist/css/bootstrap.min.css';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld,
  MainPage,
});
