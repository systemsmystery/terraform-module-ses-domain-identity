data "aws_route53_zone" "zone" {
  name = coalesce(var.zone_name, var.domain_name)
}
