import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Home from "./pages/Home";
import Payment from "./pages/Payment";
import "antd/dist/reset.css"; // Tambahkan ini untuk reset gaya bawaan Ant Design

function App() {
  return (
    <Router>
      <Routes>
      <Route path="/payment/:id" element={<Payment />} />
        <Route path="/" element={<Home />} />
        
      </Routes>
    </Router>
  );
}

export default App;
