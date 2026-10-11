resource "google_compute_firewall_policy_iam_member" "compute_firewall_policy_iam_members" {
  for_each = var.compute_firewall_policy_iam_members

  member = each.value.member
  name   = each.value.name
  role   = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

