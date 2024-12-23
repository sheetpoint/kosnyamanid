// Import dependencies
const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
// Create an Express app
const app = express();
const port = 3001;
// Middleware
app.use(bodyParser.json());
// MySQL database connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '', // Adjust with your password
  database: 'hackathon'
});
db.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the MySQL database.');
});
// CRUD for `Client` table
// Create a new client
app.post('/clients', (req, res) => {
  const { nama_client, umur_client, jenis_kelamin, email, kata_sandi } = req.body;
  const sql = 'INSERT INTO Client (nama_client, umur_client, jenis_kelamin, email, kata_sandi) VALUES (?, ?, ?, ?, ?)';
  db.query(sql, [nama_client, umur_client, jenis_kelamin, email, kata_sandi], (err, result) => {
    if (err) return res.status(500).json(err);
    res.status(201).json({ id_client: result.insertId });
  });
});
// Read all clients
app.get('/clients', (req, res) => {
  const sql = 'SELECT * FROM Client';
  db.query(sql, (err, results) => {
    if (err) return res.status(500).json(err);
    res.json(results);
  });
});
// Read a specific client
app.get('/clients/:id', (req, res) => {
  const sql = 'SELECT * FROM Client WHERE id_client = ?';
  db.query(sql, [req.params.id], (err, result) => {
    if (err) return res.status(500).json(err);
    if (result.length === 0) return res.status(404).json({ message: 'Client not found' });
    res.json(result[0]);
  });
});
// Update a client
app.put('/clients/:id', (req, res) => {
  const { nama_client, umur_client, jenis_kelamin, email, kata_sandi } = req.body;
  const sql = 'UPDATE Client SET nama_client = ?, umur_client = ?, jenis_kelamin = ?, email = ?, kata_sandi = ? WHERE id_client = ?';
  db.query(sql, [nama_client, umur_client, jenis_kelamin, email, kata_sandi, req.params.id], (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'Client updated successfully' });
  });
});
// Delete a client
app.delete('/clients/:id', (req, res) => {
  const sql = 'DELETE FROM Client WHERE id_client = ?';
  db.query(sql, [req.params.id], (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'Client deleted successfully' });
  });
});
// CRUD for `Kos` table
// Similar structure as above, but targeting the `Kos` table
app.post('/kos', (req, res) => {
  const { nama_kos, alamat, jumlah_kamar, keterangan } = req.body;
  const sql = 'INSERT INTO Kos (nama_kos, alamat, jumlah_kamar, keterangan) VALUES (?, ?, ?, ?)';
  db.query(sql, [nama_kos, alamat, jumlah_kamar, keterangan], (err, result) => {
    if (err) return res.status(500).json(err);
    res.status(201).json({ id_kos: result.insertId });
  });
});
app.get('/kos', (req, res) => {
  const sql = 'SELECT * FROM Kos';
  db.query(sql, (err, results) => {
    if (err) return res.status(500).json(err);
    res.json(results);
  });
});
// Add similar endpoints for `Pemilik`, `Berada`, `Berada_Pemilik`, `Wilayah_RW`, and `Memilih`
app.put('/kos/:id', (req, res) => {
  const { nama_kos, alamat	, jumlah_kamar, keterangan	 } = req.body;
  const sql = 'UPDATE Client SET nama_kos = ?, alamat = ?, jumlah_kamar= ?, keterangan	 = ? WHERE id_kos = ?';
  db.query(sql, [nama_kos, alamat	, jumlah_kamar, keterangan	, req.params.id], (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'Kos updated successfully' });
  });
});
app.delete('/kos/:id', (req, res) => {
  const sql = 'DELETE FROM Kos WHERE id_kos = ?';
  db.query(sql, [req.params.id], (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'Kos deleted successfully' });
  });
});
// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});