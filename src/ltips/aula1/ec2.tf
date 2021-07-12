resource "aws_instance" "web" {
  ami = "ami-0885b1f6bd170450c"
  instance_type = "t3.micro"

  tags = {
    "name" = "helloworld"
  }
}