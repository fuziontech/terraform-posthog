output "project_dns_name" {
  value = "${aws_elb.varnish-elb.dns_name}"
}
