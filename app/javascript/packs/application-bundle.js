import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
import App from 'bundles/App';
import HomePage from 'bundles/components/home_page';
import PatientsPage from 'bundles/components/patients_page';
import ReservationsPage from 'bundles/components/reservations_page';
import ReportsPage from 'bundles/components/reports_page'

import 'bootstrap/dist/css/bootstrap.min.css';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld,
  App,
  HomePage,
  PatientsPage,
  ReservationsPage,
  ReportsPage
});
