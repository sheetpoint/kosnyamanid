import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Header from "./components/Header";
import Footer from "./components/Footer"; // Jika ada Footer
import Home from "./pages/Home"; // Halaman Home
import WilayahRW from "./pages/WilayahRW"; // Halaman Wilayah RW

const App = () => {
  return (
    <Router>
      <Header /> {/* Header akan muncul di semua halaman */}
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/wilayah-rw" element={<WilayahRW />} />
        <Route path="/kost" element={<div><h1>Halaman Kost</h1></div>} />
        <Route path="/contact" element={<div><h1>Halaman Contact</h1></div>} />
      </Routes>
      <Footer /> {/* Footer akan muncul di semua halaman */}
    </Router>
  );
};

export default App;
