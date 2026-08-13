variable "iot_topic_rule_destinations" {
  description = <<EOT
Map of iot_topic_rule_destinations, attributes below
Required:
    - vpc_configuration (block):
        - role_arn (required)
        - security_groups (optional)
        - subnet_ids (required)
        - vpc_id (required)
Optional:
    - enabled
    - region
EOT

  type = map(object({
    enabled = optional(bool)
    region  = optional(string)
    vpc_configuration = object({
      role_arn        = string
      security_groups = optional(set(string))
      subnet_ids      = set(string)
      vpc_id          = string
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

