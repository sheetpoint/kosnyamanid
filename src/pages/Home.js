import React, { useState } from "react";
import Header from "../components/Header";
import HeroSection from "../components/HeroSection";
import Filter from "../components/Filter";
import CardList from "../components/CardList";
import Footer from "../components/Footer";

const Home = () => {
  const [filteredData, setFilteredData] = useState([]);

  const allData = [
    { id: 1, name: "Kos Indah RW 01", harga: 1200000, jumlahKamar: 3, fasilitas: ["Wi-Fi", "AC", "Dapur Bersama"] },
    { id: 2, name: "Kos Eksklusif RW 02", harga: 2000000, jumlahKamar: 2, fasilitas: ["AC", "Parkir"] },
  ];

  const handleFilterChange = (filter) => {
    // Logika filter
  };

  return (
    <div>
      <Header />
      <HeroSection />
      <div className="container mx-auto my-8">
        <Filter onFilterChange={handleFilterChange} />
        <CardList data={filteredData.length > 0 ? filteredData : allData} />
      </div>
      <Footer />
    </div>
  );
};

export default Home;
