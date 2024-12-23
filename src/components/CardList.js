import React from "react";
import { useNavigate } from "react-router-dom";
import "./CardList.css";

const CardList = ({ data }) => {
  const navigate = useNavigate();

  return (
    <div className="card-list">
      {data.map((item) => (
        <div key={item.id} className="card">
          <div className="card-header">
            <h3>{item.name}</h3>
          </div>
          <div className="card-body">
            <p><strong>Harga:</strong> Rp {item.harga.toLocaleString()}</p>
            <p><strong>Jumlah Kamar:</strong> {item.jumlahKamar} kamar tersedia</p>
            <p><strong>Fasilitas:</strong> {item.fasilitas.join(", ")}</p>
            <p><strong>Rating:</strong> {item.rating} / 5</p>
            <p><strong>Alamat:</strong> {item.alamat}</p>
            <p><strong>Jenis:</strong> {item.jenis}</p>
          </div>
          <div className="card-footer">
            <button
              onClick={() => 
                navigate(`/payment/${item.id}`, { state: { price: item.harga, name: item.name } })
              }
            >
              Pilih Kos
            </button>
          </div>
        </div>
      ))}
    </div>
  );
};

export default CardList;
