variable "domain_name" {
  type        = string
  description = "The domain name to use for the Route53 zone"
}

variable "zone_name" {
  type        = string
  description = "The name of the Route53 zone (if different from domain_name"
  default     = ""
}

variable "enable_receive_email" {
  type        = bool
  description = "Whether to enable receiving email for the domain"
  default     = false
}
