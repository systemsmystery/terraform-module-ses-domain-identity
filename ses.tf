resource "aws_ses_domain_identity" "domain_identity" {
  domain = var.domain_name
}

resource "aws_ses_domain_identity_verification" "verification" {
  domain = aws_ses_domain_identity.domain_identity.id

  depends_on = [aws_route53_record.ses_verification_record]
}

resource "aws_ses_domain_dkim" "domain_dkim" {
  domain = aws_ses_domain_identity.domain_identity.domain
}
