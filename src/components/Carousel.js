import React, { useState } from "react";
import "./Carousel.css";
import rwImage1 from "../assets/images/image (2).png"; // Gambar RW 01
import rwImage2 from "../assets/images/image (3).png"; // Gambar RW 02
import rwImage3 from "../assets/images/image (3).png"; // Gambar RW 03
import rwImage4 from "../assets/images/image (2).png"; // Gambar RW 04
import rwImage5 from "../assets/images/image (2).png"; // Gambar RW 05

const Carousel = () => {
    // State untuk mengatur indeks pertama dari card yang terlihat
    const [currentIndex, setCurrentIndex] = useState(0);

    // Data RW
    const rwData = [
        {
            image: rwImage1,
            title: "RW 01",
            description: "Kelurahan Sukamaju, Kecamatan Sukajaya",
        },
        {
            image: rwImage2,
            title: "RW 02",
            description: "Kelurahan Mekarjaya, Kecamatan Sukaresmi",
        },
        {
            image: rwImage3,
            title: "RW 03",
            description: "Kelurahan Harapan Indah, Kecamatan Sukaratu",
        },
        {
            image: rwImage4,
            title: "RW 04",
            description: "Kelurahan Citra Lestari, Kecamatan Sukadarma",
        },
        {
            image: rwImage5,
            title: "RW 05",
            description: "Kelurahan Indah Jaya, Kecamatan Sukamulya",
        },
    ];

    // Fungsi untuk menggeser ke item sebelumnya
    const handlePrev = () => {
        setCurrentIndex((prevIndex) =>
            prevIndex === 0 ? Math.max(0, rwData.length - 3) : prevIndex - 1
        );
    };

    // Fungsi untuk menggeser ke item berikutnya
    const handleNext = () => {
        setCurrentIndex((prevIndex) =>
            prevIndex >= rwData.length - 3 ? 0 : prevIndex + 1
        );
    };

    // Data yang akan ditampilkan (3 card)
    const visibleData = rwData.slice(currentIndex, currentIndex + 3);

    return (
        <div className="wilayah-rw">
            <h1>Cari Kos Mudah dan Cepat di Semua Wilayah</h1>
            <p>
                Jelajahi daftar kos berdasarkan wilayah RW. Temukan informasi
                umum tentang kelurahan dan kecamatan di setiap RW.
            </p>
            <div className="carousel">
                <div className="rw-list">
                    {visibleData.map((rw, index) => (
                        <div className="rw-card" key={index}>
                            <img
                                src={rw.image}
                                alt={`Gambar ${rw.title}`}
                                loading="lazy"
                            />
                            <h2>{rw.title}</h2>
                            <p>{rw.description}</p>
                        </div>
                    ))}
                </div>
                <div className="arrows">
                    <button
                        className="arrow prev"
                        onClick={handlePrev}
                        disabled={rwData.length <= 3}
                    >
                        ❮
                    </button>
                    <button
                        className="arrow next"
                        onClick={handleNext}
                        disabled={rwData.length <= 3}
                    >
                        ❯
                    </button>
                </div>
            </div>
        </div>
    );
};

export default Carousel;
