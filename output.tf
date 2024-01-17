output "ses_identity_arn" {
  value       = aws_ses_domain_identity.domain_identity.arn
  description = "The ARN of the SES domain identity"
}
