import React, { useState } from "react";
import { useLocation } from "react-router-dom";
import { ethers } from "ethers";

const Payment = () => {
  const location = useLocation();
  const { price, name } = location.state; // Ambil data dari CardList
  const [status, setStatus] = useState("");

  const handlePayment = async () => {
    if (!window.ethereum) {
      setStatus("MetaMask tidak terpasang!");
      return;
    }

    try {
      const provider = new ethers.BrowserProvider(window.ethereum);
      const signer = provider.getSigner();

      const contractAddress = "0xYourSmartContractAddress"; // Ganti dengan alamat kontrak
      const contractABI = [
        "function pay() public payable",
        "function getBalance() public view returns (uint)",
      ];

      const contract = new ethers.Contract(contractAddress, contractABI, signer);

      const tx = await contract.pay({
        value: ethers.parseEther(price.toString()), // Konversi harga ke Ether
      });

      setStatus("Transaksi sedang diproses...");
      await tx.wait();
      setStatus("Pembayaran berhasil!");
    } catch (error) {
      console.error(error);
      setStatus("Pembayaran gagal! Silakan cek MetaMask Anda.");
    }
  };

  return (
    <div style={{ padding: "20px", maxWidth: "600px", margin: "auto" }}>
      <h2>Pembayaran Kos</h2>
      <p><strong>Kos:</strong> {name}</p>
      <p><strong>Harga:</strong> {price} ETH</p>
      <button onClick={handlePayment} style={{ padding: "10px 20px", background: "#512da8", color: "white", border: "none", borderRadius: "5px" }}>
        Bayar dengan MetaMask
      </button>
      <p>Status: {status}</p>
    </div>
  );
};

export default Payment;
