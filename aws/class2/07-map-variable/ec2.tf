variable "region" {}
variable "amis" {
  type = map(string)
  default = {
    "us-east-1" = "ami-0fff1b9a61dec8a5f"
    "us-east-2" = "ami-0ea3c35c5c3284d82"
  }
}

resource "aws_instance" "example" {
  ami           = lookup(var.amis, var.region)
  instance_type = "t2.micro"
}
