output "id" {
  value = "${aws_elasticache_cluster.default.id}"
}

output "security_group_id" {
  value = "${aws_security_group.default.id}"
}

output "port" {
  value = "11211"
}

output "config_host" {
  value = "${module.dns_config.hostname}"
}

output "hosts" {
  value = "${join(",", null_resource.host.*.triggers.name)}"
}