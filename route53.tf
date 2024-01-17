resource "aws_route53_record" "ses_verification_record" {
  zone_id = data.aws_route53_zone.zone.id
  name    = "_amazonses.${aws_ses_domain_identity.domain_identity.id}"
  type    = "TXT"
  ttl     = "600"
  records = [aws_ses_domain_identity.domain_identity.verification_token]
}

resource "aws_route53_record" "dkim_verification_record" {
  count   = 3
  zone_id = data.aws_route53_zone.zone.id
  name    = "${aws_ses_domain_dkim.domain_dkim.dkim_tokens[count.index]}._domainkey"
  type    = "CNAME"
  ttl     = "600"
  records = ["${aws_ses_domain_dkim.domain_dkim.dkim_tokens[count.index]}.dkim.amazonses.com"]
}

resource "aws_route53_record" "ses_receive_mx" {
  count   = var.enable_receive_email ? 1 : 0
  zone_id = data.aws_route53_zone.zone.id
  name    = "mail"
  type    = "MX"
  ttl     = "600"
  records = [
    "10 inbound-smtp.eu-west-2.amazonaws.com",
  ]
}
