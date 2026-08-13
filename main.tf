resource "aws_iot_topic_rule_destination" "iot_topic_rule_destinations" {
  for_each = var.iot_topic_rule_destinations

  enabled = each.value.enabled
  region  = each.value.region

  vpc_configuration {
    role_arn        = each.value.vpc_configuration.role_arn
    security_groups = each.value.vpc_configuration.security_groups
    subnet_ids      = each.value.vpc_configuration.subnet_ids
    vpc_id          = each.value.vpc_configuration.vpc_id
  }
}

