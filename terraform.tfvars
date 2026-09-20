student_id = "tim042"
project    = "tisip-iac"
location   = "westeurope"
ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILejsQV1JiQc00+rFwC5moTCiiFhNXr6YND+q9YCjCFw iac-kurs"

nsg_rules = [
  { name = "allow_http", priority = 100, port = "80" },
  { name = "allow_ssh", priority = 200, port = "22" },
  { name = "allow_https", priority = 300, port = "443" }
]