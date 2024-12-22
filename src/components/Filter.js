import React, { useState } from "react";
import "./Filter.css";

const Filter = ({ onFilterChange }) => {
  const [filters, setFilters] = useState({
    jumlahKamar: "All",
    harga: [500000, 5000000],
    fasilitas: "All",
    jenisKos: "All",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFilters({
      ...filters,
      [name]: value,
    });
    onFilterChange({ ...filters, [name]: value });
  };

  const handleSliderChange = (e) => {
    const value = e.target.value;
    setFilters({
      ...filters,
      harga: [500000, Number(value)],
    });
    onFilterChange({ ...filters, harga: [500000, Number(value)] });
  };

  return (
    <div className="filter-container">
      <h3>Filter</h3>
      <div className="filter-group">
        <label>Jumlah Kamar</label>
        <select name="jumlahKamar" value={filters.jumlahKamar} onChange={handleChange}>
          <option value="All">All</option>
          <option value="1">1 Kamar</option>
          <option value="2">2 Kamar</option>
          <option value="3">3+ Kamar</option>
        </select>
      </div>
      <div className="filter-group">
        <label>Harga per Bulan</label>
        <input type="range" min="500000" max="5000000" value={filters.harga[1]} onChange={handleSliderChange} />
        <span>Rp {filters.harga[1].toLocaleString()}</span>
      </div>
      <div className="filter-group">
        <label>Fasilitas</label>
        <select name="fasilitas" value={filters.fasilitas} onChange={handleChange}>
          <option value="All">All</option>
          <option value="Wi-Fi">Wi-Fi</option>
          <option value="AC">AC</option>
          <option value="Dapur Bersama">Dapur Bersama</option>
          <option value="Parkir">Parkir</option>
        </select>
      </div>
      <div className="filter-group">
        <label>Jenis Kos</label>
        <select name="jenisKos" value={filters.jenisKos} onChange={handleChange}>
          <option value="All">All</option>
          <option value="Campuran">Campuran</option>
          <option value="Khusus Wanita">Khusus Wanita</option>
          <option value="Khusus Pria">Khusus Pria</option>
        </select>
      </div>
    </div>
  );
};

export default Filter;
