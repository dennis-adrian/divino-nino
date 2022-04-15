import React from 'react';
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link
} from "react-router-dom";
import "./App.scss";

import Container from "react-bootstrap/Container";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";

import Home from 'bundles/components/home_page'
import ReservationsPage from 'bundles/components/reservations_page';
import PatientsPage from 'bundles/components/patients_page';
import ReportsPage from 'bundles/components/reports_page'

const App = () => {
  return (
    <Router>
      <Navbar bg="light" expand="lg">
        <Container>
          <Navbar.Brand>
            <Link className="home-button" to="/">Clínica Divino Niño</Link>
          </Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              <Link className="link" to="/">Home</Link>
              <Link className="link" to="/reservas">Reservas</Link>
              <Link className="link" to="/pacientes">Pacientes</Link>
              <Link className="link" to="/reportes">Reportes</Link>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>

      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/reservas" element={<ReservationsPage />} />
        <Route path="/pacients" element={<PatientsPage />} />
        <Route path="/reportes" element={<ReportsPage />} />
      </Routes>
    </Router>
  )
}

export default App;