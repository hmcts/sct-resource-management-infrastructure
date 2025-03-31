resource "azurerm_resource_group" "sct-resource-management" {
  name     = "sct-${var.env}"
  location = "UK South"
  tags     = var.common_tags
}

module "key_vault" {
  source              = "git@github.com:hmcts/cnp-module-key-vault?ref=master"
  name                = "sct-${var.env}" // Max 24 characters
  product             = var.product
  env                 = var.env
  object_id           = var.jenkins_AAD_objectId
  resource_group_name = azurerm_resource_group.sct-resource-management.name
  product_group_name  = "DTS SCT Resource Management"
  common_tags         = var.common_tags
}