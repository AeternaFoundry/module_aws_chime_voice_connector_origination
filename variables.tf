variable "chime_voice_connector_originations" {
  description = <<EOT
Map of chime_voice_connector_originations, attributes below
Required:
    - voice_connector_id
    - route (block):
        - host (required)
        - port (optional)
        - priority (required)
        - protocol (required)
        - weight (required)
Optional:
    - disabled
    - region
EOT

  type = map(object({
    voice_connector_id = string
    disabled           = optional(bool)
    region             = optional(string)
    route = list(object({
      host     = string
      port     = optional(number)
      priority = number
      protocol = string
      weight   = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.chime_voice_connector_originations : (
        length(v.route) >= 1 && length(v.route) <= 20
      )
    ])
    error_message = "Each route list must contain between 1 and 20 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

