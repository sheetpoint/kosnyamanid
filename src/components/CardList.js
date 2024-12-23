import React from "react";

const CardList = ({ data }) => {
  return (
    <div className="card-list">
      {data.map((item) => (
        <div key={item.id} className="card">
          <h3>{item.name}</h3>
          <p><strong>Harga:</strong> Rp {item.harga.toLocaleString()}</p>
          <p><strong>Jumlah Kamar:</strong> {item.jumlahKamar} kamar tersedia</p>
          <p><strong>Fasilitas:</strong> {item.fasilitas.join(", ")}</p>
          <p><strong>Jenis:</strong> {item.jenisKos}</p>
          <button>Pilih Kos</button>
        </div>
      ))}
    </div>
  );
};

export default CardList;
