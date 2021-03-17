output "ip_address_east" {
  value = aws_instance.web_east.public_ip
}

output "ip_address_west" {
  value = aws_instance.web_west.public_ip
}

output "test_variable" {
  value = var.image_id
}