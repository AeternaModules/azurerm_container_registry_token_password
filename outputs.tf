output "container_registry_token_passwords" {
  description = "All container_registry_token_password resources"
  value       = azurerm_container_registry_token_password.container_registry_token_passwords
  sensitive   = true
}
output "container_registry_token_passwords_container_registry_token_id" {
  description = "List of container_registry_token_id values across all container_registry_token_passwords"
  value       = [for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : v.container_registry_token_id]
}
output "container_registry_token_passwords_password1" {
  description = "List of password1 values across all container_registry_token_passwords"
  value       = [for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : v.password1]
  sensitive   = true
}
output "container_registry_token_passwords_password2" {
  description = "List of password2 values across all container_registry_token_passwords"
  value       = [for k, v in azurerm_container_registry_token_password.container_registry_token_passwords : v.password2]
  sensitive   = true
}

