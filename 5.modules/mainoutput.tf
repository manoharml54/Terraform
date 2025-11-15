output "testenv-vpcid" {
  description = "List of IDs of instance"
  value = ["${module.Testing-Env.vpcid}"]
}

output "testenv-vpcname" {
  description = "List of IDs of instance"
  value = ["${module.Testing-Env.vpcname}"]
}