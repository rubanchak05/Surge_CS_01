provider "azapi" {}

resource "azapi_resource" "ssh_public_key" {
  type      = "Microsoft.Compute/sshPublicKeys@2022-08-01"
  name      = "abccorp-sale-ssh"
  location  = azurerm_resource_group.rg.location
  parent_id = azurerm_resource_group.rg.id

  body = jsonencode({
    properties = {}
  })
}

output "key_data" {
  value = azapi_resource.ssh_public_key.id
}