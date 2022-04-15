import React from 'react';

import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link
} from "react-router-dom";

import Container from "react-bootstrap/Container";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";

import Home from 'bundles/components/home'
import ReservationPage from 'bundles/components/reservation_page';

const App = () => {
  return (
    <Router>
      <Navbar bg="light" expand="lg">
        <Container>
          <Navbar.Brand>
            <Link to="/">Clínica Divino Niño</Link>
          </Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              <Link to="/">Home</Link>
              <Link to="/reservas">Reservas</Link>
              <Link to="/pacientes">Pacientes</Link>
              <Link to="/reportes">Reportes</Link>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>

      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/reservas" element={<ReservationPage />} />
      </Routes>
    </Router>
  )
}

export default App;