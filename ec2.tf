data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu - canonical
}

resource "aws_instance" "web" {
  # ami = "ami-0885b1f6bd170450c"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
      Resource = "ec2"
      Name = "HelloWorld"
  }
}