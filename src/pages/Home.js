import React, { useState } from "react";
import HeroSection from "../components/HeroSection"; // Komponen Hero
import WilayahRW from "./WilayahRW"; // Komponen WilayahRW
import Carousel from "../components/Carousel"; // Komponen Carousel
import Filter from "../components/Filter"; // Komponen Filter
import CardList from "../components/CardList"; // Daftar Kos
import Footer from "../components/Footer"; // Footer
import "./Home.css"; // Styling Home

const Home = () => {
  const [filteredData, setFilteredData] = useState([]); // State untuk data hasil filter

  const allData = [
    {
      id: 1,
      name: "Kos Indah RW 01",
      harga: 1200000,
      jumlahKamar: 3,
      fasilitas: ["Wi-Fi", "AC", "Dapur Bersama"],
      rating: 4.5,
      alamat: "Jl. Mawar No. 10, RW 01, Jakarta",
      jenisKos: "Campuran",
    },
    {
      id: 2,
      name: "Kos Eksklusif RW 02",
      harga: 2000000,
      jumlahKamar: 2,
      fasilitas: ["AC", "Parkir"],
      rating: 5,
      alamat: "Jl. Melati No. 5, RW 02, Surabaya",
      jenisKos: "Khusus Wanita",
    },
  ];

  // Fungsi untuk menangani filter
  const handleFilterChange = (filters) => {
    const result = allData.filter((item) => {
      const hargaValid = item.harga <= filters.harga[1];
      const kamarValid = filters.jumlahKamar === "All" || Number(filters.jumlahKamar) <= item.jumlahKamar;
      const fasilitasValid = filters.fasilitas === "All" || item.fasilitas.includes(filters.fasilitas);
      const jenisValid = filters.jenisKos === "All" || filters.jenisKos === item.jenisKos;
      return hargaValid && kamarValid && fasilitasValid && jenisValid;
    });
    setFilteredData(result); // Set data hasil filter
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
