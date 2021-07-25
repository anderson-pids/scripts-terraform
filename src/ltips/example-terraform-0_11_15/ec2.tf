data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # ubuntu
}

resource "aws_instance" "web" {
  # ami = "ami-0885b1f6bd170450c"
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t3.micro"

  tags = {
    "name" = "helloworld"
  }
}

