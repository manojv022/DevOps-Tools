ami_id = "ami-01376101673c89611"
instance_type = "t2.micro"
key_name = "tf-key"
vpc_cidr_block = "192.168.0.0/16"
subnet_block = ["192.168.0.0/24","192.168.1.0/24"]
public_ip = true
az = ["ap-south-1a", "ap-south-1b"]
