output "container_registry_token_passwords_id" {
  description = "Map of id values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = { for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : k => v.id }
}
output "container_registry_token_passwords_container_registry_token_id" {
  description = "Map of container_registry_token_id values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = { for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : k => v.container_registry_token_id }
}
output "container_registry_token_passwords_password1" {
  description = "Map of password1 values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = { for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : k => v.password1 }
  sensitive   = true
}
output "container_registry_token_passwords_password2" {
  description = "Map of password2 values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = { for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : k => v.password2 }
  sensitive   = true
}

