variable "database_external_container_database_managements" {
  description = <<EOT
Map of database_external_container_database_managements, attributes below
Required:
    - enable_management
    - external_container_database_id
    - external_database_connector_id
Optional:
    - license_model
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    enable_management              = bool
    external_container_database_id = string
    external_database_connector_id = string
    license_model                  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

