variable "container_registry_token_passwords" {
  description = <<EOT
Map of container_registry_token_passwords, attributes below
Required:
    - container_registry_token_id
    - password1 (block):
        - expiry (optional)
Optional:
    - password2 (block):
        - expiry (optional)
EOT

  type = map(object({
    container_registry_token_id = string
    password1 = object({
      expiry = optional(string)
    })
    password2 = optional(object({
      expiry = optional(string)
    }))
  }))
}

