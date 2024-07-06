# $${\color{red} \textbf{Variables:}}$$



- Terraform variables let you customize your configurations so you can easily reuse them.
- They act like blanks you fill in with different values whenever you use your Terraform files.
  


**1.String:** Textual data, like words or sentences.

**2.Number:** Numeric data, including integers and floating-point numbers.

**3.Boolean:** Represents true or false values.

**4.List:** An ordered collection of items.

**5.Map:** A collection of key-value pairs.



````hcl
variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the instance"
  type        = string
}


variable "key_name" {
  description = "The name of the EC2 key pair to associate with the instance"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instance"
  type        = map(string)
  default     = {
      Name = "VM-1"
                }
}
````
