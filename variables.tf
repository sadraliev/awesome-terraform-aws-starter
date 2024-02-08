variable "aws_secret_key" {
  type        = string
  description = "The secret key for AWS authentication"
}
variable "aws_access_key" {
  type        = string
  description = "The access key for AWS authentication"
}

variable "key-name" {
  type        = string
  description = "The name of the AWS key pair to use for SSH access to the EC2 instance."
}

variable "network-security-group-name" {
  type        = string
  description = "The name of the AWS security group to associate with the EC2 instance."
}

variable "ami" {
  type        = string
  description = "The ID of the Amazon Machine Image (AMI) to use for the Ubuntu EC2 instance."
}

variable "ubuntu-instance-type" {
  type        = string
  description = "The instance type to use for the Ubuntu EC2 instance."
}
