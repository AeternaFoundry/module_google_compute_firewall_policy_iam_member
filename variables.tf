variable "compute_firewall_policy_iam_members" {
  description = <<EOT
Map of compute_firewall_policy_iam_members, attributes below
Required:
    - member
    - name
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member = string
    name   = string
    role   = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

