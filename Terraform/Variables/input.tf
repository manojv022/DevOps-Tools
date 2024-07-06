variable "ami_id" {
  type        = string
  description = "assign ami id"
  
}

variable "instance_type" {
  type        = string
  description = "use this instance type"
  

}

variable "key_name" {
  type    = string
  

}

variable "vpc_cidr_block" {
  type = string

}

variable "subnet_block" {
  type = list(string)
  
}

variable "public_ip" {
  type = bool

}

variable "az" {
  type = list(string)

  
}
