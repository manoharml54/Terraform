output "vpcid" {
  description = "List of IDs of instance"
  value = ["${aws_vpc.default.id}"]
}

output "vpcname" {
  description = "List of IDs of instance"
  value = ["${aws_vpc.default.tags.Name}"]
}