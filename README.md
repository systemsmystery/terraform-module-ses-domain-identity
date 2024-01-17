# Terraform Module - SES Domain Identity

This module creates a SES domain identity and required DNS records.

## Terraform Resources

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.dkim_verification_record](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/route53_record) | resource |
| [aws_route53_record.ses_receive_mx](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/route53_record) | resource |
| [aws_route53_record.ses_verification_record](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/route53_record) | resource |
| [aws_ses_domain_dkim.domain_dkim](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/ses_domain_dkim) | resource |
| [aws_ses_domain_identity.domain_identity](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/ses_domain_identity) | resource |
| [aws_ses_domain_identity_verification.verification](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/ses_domain_identity_verification) | resource |
| [aws_route53_zone.zone](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to use for the Route53 zone | `string` | n/a | yes |
| <a name="input_enable_receive_email"></a> [enable\_receive\_email](#input\_enable\_receive\_email) | Whether to enable receiving email for the domain | `bool` | `false` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the Route53 zone (if different from domain\_name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ses_identity_arn"></a> [ses\_identity\_arn](#output\_ses\_identity\_arn) | The ARN of the SES domain identity |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
