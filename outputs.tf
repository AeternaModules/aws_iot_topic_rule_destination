output "iot_topic_rule_destinations_id" {
  description = "Map of id values across all iot_topic_rule_destinations, keyed the same as var.iot_topic_rule_destinations"
  value       = { for k, v in aws_iot_topic_rule_destination.iot_topic_rule_destinations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_topic_rule_destinations_arn" {
  description = "Map of arn values across all iot_topic_rule_destinations, keyed the same as var.iot_topic_rule_destinations"
  value       = { for k, v in aws_iot_topic_rule_destination.iot_topic_rule_destinations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_topic_rule_destinations_enabled" {
  description = "Map of enabled values across all iot_topic_rule_destinations, keyed the same as var.iot_topic_rule_destinations"
  value       = { for k, v in aws_iot_topic_rule_destination.iot_topic_rule_destinations : k => v.enabled if v.enabled != null }
}
output "iot_topic_rule_destinations_region" {
  description = "Map of region values across all iot_topic_rule_destinations, keyed the same as var.iot_topic_rule_destinations"
  value       = { for k, v in aws_iot_topic_rule_destination.iot_topic_rule_destinations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_topic_rule_destinations_vpc_configuration" {
  description = "Map of vpc_configuration values across all iot_topic_rule_destinations, keyed the same as var.iot_topic_rule_destinations"
  value       = { for k, v in aws_iot_topic_rule_destination.iot_topic_rule_destinations : k => one(v.vpc_configuration) if v.vpc_configuration != null && length(v.vpc_configuration) > 0 }
}

