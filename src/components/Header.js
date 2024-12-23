import React from "react";
import { Menu } from "antd";
import "./Header.css";
import logo from "../assets/images/_Layer_.png"; // Pastikan path ini sesuai lokasi file gambar Anda
const Header = () => {
  return (
    <header className="header">
      <div className="logo">
        <img src={logo} alt="FollowUp Logo" className="logo-img" />
      </div>
      <Menu mode="horizontal" className="menu" selectable={false}>
        <Menu.Item key="1">
          <a href="#home">Home</a>
        </Menu.Item>
        <Menu.Item key="2">
          <a href="#wilayah">Wilayah RW</a>
        </Menu.Item>
        <Menu.Item key="3">
          <a href="#kost">Kost</a>
        </Menu.Item>
        <Menu.Item key="4">
          <a href="#contact">Contact</a>
        </Menu.Item>
      </Menu>
      <div className="auth-buttons">
        <button className="login-button">Login</button>
        <button className="signup-button">Sign Up</button>
      </div>
    </header>
  );
};

export default Header;
