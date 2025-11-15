variable "ami_id" {
  description = "amazon machine image"
  default = "ami-0cae6d6fe6048ca2c"
}

variable "aws_instance" {
  description = "this is amazon ec2 insatance"
  default = "t2.micro"
}

variable "instances" {
  description = "total number of instances"
  default = 1
}