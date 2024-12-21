import React from "react";
import "./HeroSection.css";
import homeImage from "../assets/images/image (1).png";

const HeroSection = () => {
  return (
    <section className="hero">
      <div className="hero-left">
        <h1>Cari Kos Mudah dan Cepat di Semua Wilayah</h1>
        <p>
          Temukan kos impian Anda di wilayah terdekat dengan pencarian cepat
          dan navigasi yang
        </p>
        <div className="buttons">
          <button className="btn-explore">JELAJAHI WILAYAH RW</button>
          <button className="btn-search">PENCARIAN KOS</button>
        </div>
      </div>
      <div className="hero-right">
        <img src={homeImage} alt="Kos Area" />
        <div className="info-box">
          <p>
            Platform ini membantu Anda menemukan kos terbaik berdasarkan
            lokasi, jumlah kamar, dan pemilik. Jelajahi kos di wilayah Anda
            atau gunakan fitur pencarian untuk hasil yang lebih spesifik.
          </p>
        </div>
      </div>
    </section>
  );
};

export default HeroSection;
