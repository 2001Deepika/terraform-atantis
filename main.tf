resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo 'Testing Atlantis setup!'"
  }
}
sudo apt install terraform
