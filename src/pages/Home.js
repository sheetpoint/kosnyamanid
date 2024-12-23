import React, { useState } from "react";
import HeroSection from "../components/HeroSection"; // Komponen Hero
import WilayahRW from "./WilayahRW"; // Komponen WilayahRW
import Carousel from "../components/Carousel"; // Komponen Carousel
import Filter from "../components/Filter"; // Komponen Filter
import CardList from "../components/CardList"; // Daftar Kos
import Footer from "../components/Footer"; // Footer
import "./Home.css"; // Styling Home

const Home = () => {
  const [filteredData, setFilteredData] = useState([]);

  const allData = [
    { id: 1, name: "Kos Indah RW 01", harga: 1200000, jumlahKamar: 3, fasilitas: ["Wi-Fi", "AC", "Dapur Bersama"] },
    { id: 2, name: "Kos Eksklusif RW 02", harga: 2000000, jumlahKamar: 2, fasilitas: ["AC", "Parkir"] },
  ];

  const handleFilterChange = (filters) => {
    const filtered = allData.filter((item) => {
      return (
        (!filters.jumlahKamar || item.jumlahKamar === Number(filters.jumlahKamar))
      );
    });
    setFilteredData(filtered);
  };
  
  return (
    <div className="home-container">
      {/* Hero Section */}
      <HeroSection />

      {/* Wilayah RW */}
      <WilayahRW />

      {/* Filter dan Card List */}
      <div className="content-container">
        <Filter onFilterChange={handleFilterChange} />
        <CardList data={filteredData.length > 0 ? filteredData : allData} />
      </div>

      {/* Footer */}
      <Footer />
    </div>
  );
};

export default Home;
