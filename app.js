// app.js

const express = require('express');
const app = express();
const port = 3000;

// ----- Existing routes -----
// Example existing route
app.get('/about', (req, res) => {
    res.send('About Page');
});

// ----- New route for homepage -----
app.get('/', (req, res) => {
    res.send('Welcome to the Homepage!');
});

// ----- Start server -----
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
