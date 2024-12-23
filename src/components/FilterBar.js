import React from "react";
import { Select, DatePicker, Button } from "antd";
import "./FilterBar.css";

const { Option } = Select;

const FilterBar = ({ onFilterChange }) => {
  const handleFilterChange = (name, value) => {
    onFilterChange({ [name]: value });
  };

  return (
    <div className="filter-bar">
      <div className="filter-item">
        <label>Lokasi</label>
        <Select
          placeholder="Pilih Lokasi"
          style={{ width: "100%" }}
          onChange={(value) => handleFilterChange("lokasi", value)}
        >
          <Option value="Jakarta, RW 01">Jakarta, RW 01</Option>
          <Option value="Surabaya, RW 02">Surabaya, RW 02</Option>
        </Select>
      </div>
      <div className="filter-item">
        <label>Tujuan</label>
        <Select
          placeholder="Pilih Tujuan"
          style={{ width: "100%" }}
          onChange={(value) => handleFilterChange("tujuan", value)}
        >
          <Option value="RW 01">RW 01</Option>
          <Option value="RW 02">RW 02</Option>
        </Select>
      </div>
      <div className="filter-item">
        <label>Tanggal Mulai</label>
        <DatePicker
          placeholder="Pilih Tanggal"
          style={{ width: "100%" }}
          onChange={(date, dateString) =>
            handleFilterChange("tanggalMulai", dateString)
          }
        />
      </div>
      <Button type="primary" shape="circle" icon={<span>🔍</span>} />
    </div>
  );
};

export default FilterBar;
