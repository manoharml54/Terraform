provider "aws" {
  #access_key = "" ## USE AWS CLI
  #secret_key = "" ## USE AWS CLI
  region     = "us-east-1"
}

resource "aws_instance" "sample" {
  count = "${var.instances}"
  ami           = "${var.ami_id}"
  instance_type = "${var.aws_instance}"
  key_name      = "manohar"
  security_groups = [ "AllowAll" ]
  user_data = file("${path.module}/user_data.sh")
  tags = {
    Name = "Terraform sample - ${count.index}"
  }
}