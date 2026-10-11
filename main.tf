resource "kubernetes_labels" "labels" {
  for_each = var.labels

  api_version   = each.value.api_version
  kind          = each.value.kind
  labels        = each.value.labels
  field_manager = each.value.field_manager
  force         = each.value.force

  metadata {
    name      = each.value.metadata.name
    namespace = each.value.metadata.namespace
  }
}

