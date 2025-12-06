const http = require('http');

const server = http.createServer((req, res) => {
  res.end('Hello from Terraform Local Lab!');
});

server.listen(3000);
