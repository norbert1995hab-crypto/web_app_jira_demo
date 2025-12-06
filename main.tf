terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

# 1. Define application code
locals {
  app_code = <<EOF
const http = require('http');

const server = http.createServer((req, res) => {
  res.end('Hello from Terraform Local Lab!');
});

server.listen(3000);
EOF
}

# 2. Create the file in nested directories
resource "local_file" "webapp_app" {
  content  = local.app_code
  filename = "${path.module}/webapp/src/index.js"
}

# 3. Output the created file path
output "webapp_file_path" {
  value       = local_file.webapp_app.filename
  description = "The full path to the web application's index.js file."
}
