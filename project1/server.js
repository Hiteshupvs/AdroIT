// server.js
const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const path = require('path');

const app = express();
const port = 3000;

// Middleware to parse incoming form data
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Serve the HTML, CSS, and JS files
app.use(express.static(path.join(__dirname, 'public')));

// Create a MySQL connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root', 
  password: 'Stranger#8', 
  database: 'register',
});

// Connect to the MySQL database
db.connect((err) => {
  if (err) {
    console.error('Database connection failed: ' + err.stack);
    return;
  }
  console.log('Connected to MySQL database');
});

// Handle form submission
app.post('/register', (req, res) => {
  const { username, email, password } = req.body;

  // SQL query to insert user data into the "users" table
  const query = 'INSERT INTO users (username, email, password) VALUES (?, ?, ?)';

  // Run the query
  db.query(query, [username, email, password], (err, result) => {
    if (err) {
      console.error('Error inserting data: ', err);
      res.status(500).send('Database error');
    } else {
      console.log('User registered successfully:', result);
      res.send('Registration successful');
    }
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
