output "labels_id" {
  description = "Map of id values across all labels, keyed the same as var.labels except keys with no id are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "labels_api_version" {
  description = "Map of api_version values across all labels, keyed the same as var.labels except keys with no api_version are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "labels_field_manager" {
  description = "Map of field_manager values across all labels, keyed the same as var.labels except keys with no field_manager are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => v.field_manager if v.field_manager != null && length(v.field_manager) > 0 }
}
output "labels_force" {
  description = "Map of force values across all labels, keyed the same as var.labels except keys with no force are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => v.force if v.force != null }
}
output "labels_kind" {
  description = "Map of kind values across all labels, keyed the same as var.labels except keys with no kind are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "labels_labels" {
  description = "Map of labels values across all labels, keyed the same as var.labels except keys with no labels are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "labels_metadata" {
  description = "Map of metadata values across all labels, keyed the same as var.labels except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_labels.labels : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}

