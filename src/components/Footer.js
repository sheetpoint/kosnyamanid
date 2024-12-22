import React from "react";
import "./Footer.css";

const Footer = () => {
  return (
    <footer className="footer">
      <div className="footer-content">
        <div className="contact-info">
          <h3>Kos Nyaman</h3>
          <p>Hubungi kami di:</p>
          <p>Email: info@kosnyaman.com</p>
          <p>Tel: 0123-456-789</p>
        </div>
        <div className="quick-links">
          <h3>Navigasi Cepat</h3>
          <ul>
            <li><a href="#wilayah">Wilayah RW</a></li>
            <li><a href="#kos">Kos</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </div>
      <p className="footer-bottom">&copy; 2024 Kos Nyaman. All Rights Reserved.</p>
    </footer>
  );
};

export default Footer;
