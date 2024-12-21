import React from "react";
import HeroSection from "../components/HeroSection"; // Komponen dari folder components
import WilayahRW from "./WilayahRW"; // Path relatif karena WilayahRW ada di folder yang sama

const Home = () => {
  return (
    <div>
      <HeroSection />
      <WilayahRW />
    </div>
  );
};

export default Home;
