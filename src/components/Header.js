import React from "react";
import SearchIcon from "@mui/icons-material/Search"; // Import ikon Search dari MUI
import PersonIcon from "@mui/icons-material/Person"; // Ikon Person dari MUI
import { NavLink } from "react-router-dom"; // Import NavLink dari React Router
import "./Header.css";
import logo from "../assets/images/_Layer_.png"; // Pastikan path ini sesuai lokasi file gambar Anda

const Header = () => {
  return (
    <header className="header">
      <div className="logo">
        <img src={logo} alt="FollowUp Logo" className="logo-img" />
      </div>
      <nav>
        <ul>
          <li>
            <NavLink
              to="/"
              className={({ isActive }) => (isActive ? "active-link" : "")}
            >
              Home
            </NavLink>
          </li>
          <li>
            <NavLink
              to="/wilayah-rw"
              className={({ isActive }) => (isActive ? "active-link" : "")}
            >
              Wilayah RW
            </NavLink>
          </li>
          <li>
            <NavLink
              to="/kost"
              className={({ isActive }) => (isActive ? "active-link" : "")}
            >
              Kost
            </NavLink>
          </li>
          <li>
            <NavLink
              to="/contact"
              className={({ isActive }) => (isActive ? "active-link" : "")}
            >
              Contact
            </NavLink>
          </li>
        </ul>
      </nav>
      <div className="icons">
        <SearchIcon className="search-icon" /> {/* Ikon Material-UI */}
        <PersonIcon className="user-icon" /> {/* Ikon User Material-UI */}
      </div>
    </header>
  );
};

export default Header;
