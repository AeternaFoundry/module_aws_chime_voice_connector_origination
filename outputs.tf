output "chime_voice_connector_originations_id" {
  description = "Map of id values across all chime_voice_connector_originations, keyed the same as var.chime_voice_connector_originations"
  value       = { for k, v in aws_chime_voice_connector_origination.chime_voice_connector_originations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chime_voice_connector_originations_disabled" {
  description = "Map of disabled values across all chime_voice_connector_originations, keyed the same as var.chime_voice_connector_originations"
  value       = { for k, v in aws_chime_voice_connector_origination.chime_voice_connector_originations : k => v.disabled if v.disabled != null }
}
output "chime_voice_connector_originations_region" {
  description = "Map of region values across all chime_voice_connector_originations, keyed the same as var.chime_voice_connector_originations"
  value       = { for k, v in aws_chime_voice_connector_origination.chime_voice_connector_originations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "chime_voice_connector_originations_route" {
  description = "Map of route values across all chime_voice_connector_originations, keyed the same as var.chime_voice_connector_originations"
  value       = { for k, v in aws_chime_voice_connector_origination.chime_voice_connector_originations : k => v.route if v.route != null && length(v.route) > 0 }
}
output "chime_voice_connector_originations_voice_connector_id" {
  description = "Map of voice_connector_id values across all chime_voice_connector_originations, keyed the same as var.chime_voice_connector_originations"
  value       = { for k, v in aws_chime_voice_connector_origination.chime_voice_connector_originations : k => v.voice_connector_id if v.voice_connector_id != null && length(v.voice_connector_id) > 0 }
}

