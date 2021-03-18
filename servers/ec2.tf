data "aws_ami" "ubuntu" {
  most_recent = true
  provider = aws.east
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu - canonical
}

resource "aws_instance" "web_east" {
  provider = aws.east
  # ami = "ami-0885b1f6bd170450c"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
      Resource = "ec2"
      Name = "HelloWorld"
  }
}

# data "aws_ami" "ubuntu_west" {
#   most_recent = true
#   provider = aws.west
#   filter {
#     name = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   owners = ["099720109477"] # Ubuntu - canonical
# }

# resource "aws_instance" "web_west" {
#   count = var.servers
#   provider = aws.west
#   ami = data.aws_ami.ubuntu_west.id
#   instance_type = "t2.micro"

#   tags = {
#       Resource = "ec2"
#       Name = "HelloWorld"
#   }
# }