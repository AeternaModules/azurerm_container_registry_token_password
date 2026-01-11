resource "azurerm_container_registry_token_password" "container_registry_token_passwords" {
  for_each = var.container_registry_token_passwords

  container_registry_token_id = each.value.container_registry_token_id

  password1 {
    expiry = each.value.password1.expiry
  }

  dynamic "password2" {
    for_each = each.value.password2 != null ? [each.value.password2] : []
    content {
      expiry = password2.value.expiry
    }
  }
}

