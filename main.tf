provider "aws"{
    region ="ap-south-1"
}
terraform {
  backend "s3" {
    bucket = "mmyyyy"
    key="atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}
resource "aws_instance" "this" {
  ami="ami-0e35ddab05955cf57"
  instance_type = "t2.micro"
  tags = {
    Name="terrafom-atlantis"
  }
}
