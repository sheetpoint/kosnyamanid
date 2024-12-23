import React from "react";

const Filter = ({ onFilterChange }) => {
  return (
    <div className="bg-white p-4 rounded-lg shadow-lg">
      <h2 className="text-lg font-bold mb-4">Filter</h2>
      <div className="mb-4">
        <label className="block mb-2 font-medium">Jumlah Kamar</label>
        <select className="w-full border px-3 py-2 rounded-lg" onChange={onFilterChange}>
          <option value="All">All</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3+</option>
        </select>
      </div>
      <button className="w-full bg-purple-600 text-white py-2 rounded-lg">Apply Filter</button>
    </div>
  );
};

export default Filter;
