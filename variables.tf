variable "labels" {
  description = <<EOT
Map of labels, attributes below
Required:
    - api_version
    - kind
    - labels
    - metadata (block):
        - name (required)
        - namespace (optional)
Optional:
    - field_manager
    - force
EOT

  type = map(object({
    api_version   = string
    kind          = string
    labels        = map(string)
    field_manager = optional(string)
    force         = optional(bool)
    metadata = object({
      name      = string
      namespace = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.labels : (
        v.field_manager == null || (length(trimspace(v.field_manager)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

