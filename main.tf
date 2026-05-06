# Optionally set subscription (useful in multi-subscription contexts)
data "azurerm_client_config" "current" {}

locals {
  effective_subscription_id = var.subscription_id != "" ? var.subscription_id : data.azurerm_client_config.current.subscription_id
}

# Resource group (optional creation)
resource "azurerm_resource_group" "this" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

# Use either created or existing RG
locals {
  rg_name     = var.create_resource_group ? azurerm_resource_group.this[0].name : var.resource_group_name
  rg_location = var.location
}

# Azure OpenAI (Cognitive Services) account
resource "azurerm_cognitive_account" "openai" {
  name                = var.openai_account_name
  location            = local.rg_location
  resource_group_name = local.rg_name
  kind                = "OpenAI"

  sku_name = var.openai_sku_name

  # Recommended: restrict network access in real environments
  public_network_access_enabled = true

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "demo"
    workload    = "azure-openai"
  }
}

# Azure OpenAI model deployment
resource "azurerm_cognitive_deployment" "openai_deployment" {
  name                 = var.openai_deployment_name
  cognitive_account_id = azurerm_cognitive_account.openai.id

  model {
    format  = var.openai_model_format
    name    = var.openai_model_name
    version = var.openai_model_version
  }

  scale {
    type = var.openai_scale_type
  }
}
