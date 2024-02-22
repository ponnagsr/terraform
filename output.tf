output "public_ip_region2" {
  value = aws_instance.region02.public_ip
}
output "public_ip_region1" {
  value = aws_instance.region1.public_ip
}