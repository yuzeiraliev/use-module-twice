
output "us_east_1_instance_public_ip" {
  value = module.module_us_east_1.test.public_ip
}

output "us_west_2_instance_public_ip" {
  value = module.module_us_west_2.test.public_ip
}
